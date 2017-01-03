# -*- coding: utf-8 -*-

from sample import application
from flask import render_template, send_from_directory, jsonify, request, session, redirect, url_for, abort, Response


@application.route('/robots.txt')
def static_from_root():
    return send_from_directory(application.static_folder, request.path[1:])

@application.errorhandler(404)
def page_not_found(error):
    return render_template("400.html", title='Wrong Turn'), 404

@application.errorhandler(500)
def internal_server_error(error):
    return render_template("500.html", title="Internal Error"), 500

@application.route("/")
def homepage():
    return render_template("index.html", title='Homepage')
