# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

[
    {
     :system_name => 'live_connection',
     :title => 'Live connection',
     :content => '<iframe width="640" height="383" src="http://www.ustream.tv/embed/9866931?ub=006699&amp;lc=54ABD6&amp;oc=ffffff&amp;uc=ffffff" scrolling="no" frameborder="0" style="border: 0px none transparent;"></iframe>'
    },
    {
     :system_name => 'world_kli',
     :title => 'World Kli',
     :content => '<iframe width="640" height="383" src="http://www.ustream.tv/embed/9866961?ub=006699&amp;lc=54ABD6&amp;oc=ffffff&amp;uc=ffffff" scrolling="no" frameborder="0" style="border: 0px none transparent;"></iframe>'
    },
    {
     :system_name => 'announcements',
     :title => 'Announcements',
     :content => <<-Announcements
     <script src="http://widgets.twimg.com/j/2/widget.js"></script>
     <script>
       new TWTR.Widget({
         version: 2,
         type: 'profile',
         rpp: 5,
         interval: 30000,
         width: 250,
         height: 300,
         theme: {
           shell: {
             background: '#000000',
             color: '#ffffff'
           },
           tweets: {
             background: '#ffffff',
             color: '#000000',
             links: '#2d7ed4'
           }
         },
         features: {
           scrollbar: true,
           loop: false,
           live: true,
           behavior: 'all'
         }
       }).render().setUser('kabcast').start();
     </script>
     Announcements
    },
    {
     :system_name => 'facebook_connection',
     :title => 'Facebook connection',
     :content => ''
    },
    {
     :system_name => 'custom_links',
     :title => 'Custom links',
     :content => ''
    },
    {
     :system_name => 'instructions',
     :title => 'Instructions',
     :content => ''
    },
    {
     :system_name => 'convention_broadcast',
     :title => 'Convention broadcast',
     :content => ''
    },
    {
     :system_name => 'live_stream',
     :title => 'Live stream',
     :content => "<fb:live-stream always_post_to_friends='true' event_app_id='111694652265703' height='600' width='640'></fb:live-stream>"
    },
].each do |element|
  Widget.find_or_create_by_system_name(element)
end