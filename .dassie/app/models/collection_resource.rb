# frozen_string_literal: true

# Generated via
#  `rails generate hyrax:collection_resource CollectionResource`
class CollectionResource < Hyrax::PcdmCollection
  # @note Do not directly update `basic_metadata.yaml`.  It is also used by works.
  #
  # To change metadata for collections
  # * extend by adding fields to `/config/metadata/CollectionResource_metadata.yaml`
  # * remove all or some basic metadata fields
  #   * comment out or delete the schema include statement for `:basic_metadata`
  #   * modify the contents of `/config/metadata/CollectionResource_metadata.yaml`
  #       to define the desired metadata characteristics, optionally copying some
  #       definitions from Hyrax `/config/metadata/basic_metadata.yaml`
  #   * update form and indexer classes to also remove the `:basic_metadata` schema includes
  #
  # Alternative:
  # * comment out or delete both schema include statements
  # * add Valkyrie attributes to this class
  # * update form and indexer to process the attributes
  #
  include Hyrax::Schema(:basic_metadata)
  include Hyrax::Schema(:collection_resource)
end
