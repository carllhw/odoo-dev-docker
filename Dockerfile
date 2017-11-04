FROM carllhw/odoo-env:9.0

LABEL maintainer="Haiwei Liu <carllhw@gmail.com>"

COPY ./requirements.txt /code/odoo/
RUN pip install -r /code/odoo/requirements.txt

RUN mkdir /var/lib/odoo && chown odoo:odoo /var/lib/odoo

EXPOSE 8069 8071

USER odoo
