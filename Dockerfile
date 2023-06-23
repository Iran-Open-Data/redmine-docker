FROM docker.arvancloud.ir/redmine:5.0

# Add theme
RUN cd public/themes/ && \
  git clone https://github.com/Iran-Open-Data/redmine-theme

# Add mermaid macro
RUN cd plugins && \
  git clone https://github.com/redmica/redmica_ui_extension.git

# Add sidebar toggle
RUN cd plugins && \
  git clone https://github.com/nanego/redmine_hide_sidebar.git

# # Install dependencies
# RUN apt-get update && \
#       apt-get -y install build-essential
#  
# # Install dmsf plugin
# RUN cd plugins && \
#       wget -c https://github.com/danmunn/redmine_dmsf/archive/refs/tags/v3.0.12.tar.gz -O - | \
#       tar -xz && mv redmine_dmsf* redmine_dmsf && \
#       bundle install && \
#       RAILS_ENV=production bundle exec rake redmine:plugins:migrate NAME=redmine_dmsf && \
#       chown -R www-data:www-data plugins/redmine_dmsf
