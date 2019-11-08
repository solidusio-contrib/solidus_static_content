class Spree::Page < ActiveRecord::Base
  acts_as_list
  default_scope -> { order("position ASC") }

  has_and_belongs_to_many :stores, join_table: 'spree_pages_stores'

  validates_presence_of :title
  validates_presence_of [:slug, :body], :if => :not_using_foreign_link?
  validates_presence_of :layout, :if => :render_layout_as_partial?
  validates_presence_of :stores

  validates :slug, :uniqueness => true, :if => :not_using_foreign_link?
  validates :foreign_link, :uniqueness => true, :allow_blank => true

  before_validation :generate_slug, if: :title?

  scope :visible, -> { where(:visible => true) }
  scope :header_links, -> { where(:show_in_header => true).visible }
  scope :footer_links, -> { where(:show_in_footer => true).visible }
  scope :sidebar_links, -> { where(:show_in_sidebar => true).visible }
  scope :ordered_by_position, -> { order(:position) }

  scope :by_store, lambda { |store| joins(:stores).where("spree_pages_stores.store_id = ?", store) }

  before_save :normalize_slug

  def link
    foreign_link.blank? ? slug : foreign_link
  end

  def meta_title
    super.presence || title
  end

private

  def normalize_slug
    # ensure that all slugs start with a slash
    slug.prepend('/') if not_using_foreign_link? and not slug.start_with? '/'
  end

  def not_using_foreign_link?
    foreign_link.blank?
  end

  def generate_slug
    self.slug ||= title.parameterize
  end
end
