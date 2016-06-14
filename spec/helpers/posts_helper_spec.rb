require 'spec_helper'

describe PostsHelper do
  let(:bucket) { FactoryGirl.create(:bucket) }
  let(:post_no_url) { FactoryGirl.create(:post, bucket: bucket) }
  let(:post_with_url) { FactoryGirl.create(:post_with_url, bucket: bucket) }

  it "should link to the post comments path if there is not url present" do
    helper.post_link(post_no_url).should eq(link_to post_no_url.name, post_path(post_no_url))
  end

  it "should link to the foreign url if there is one present" do
    helper.post_link(post_with_url).should eq(link_to post_with_url.name, post_with_url.url)
  end
end
