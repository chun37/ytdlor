class ThumbnailDownloadJob < ApplicationJob
  queue_as :thumbnail

  #
  # ジョブを実行する
  #
  # @param archive [Archive]
  def perform(archive)
    archive.update_title()
    archive.update_thumbnail()
  end
end
