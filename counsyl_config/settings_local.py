def update_settings(settings):
    #    $ ./manage.py load_sql_fixtures hgmd sequencing
    settings['CLEANDB']['extra_sql_fixtures'] = ['hgmd', 'sequencing', 'curation']    # nopep8
    settings['LOGGING']['loggers']['raven'] = {
        'handlers': ['null'],
        'level': 'ERROR'}
    settings['SELENIUM_DRIVER'] = 'remote'
    settings['EXTRA_SHELLPLUS_IMPORTS'] = [
        'collections.Counter',
        'datetime',
        'itertools',

        'django.db.connection',
        'django.db.models.Count',
        'django.db.models.F',
        'django.db.models.Q',
        'pytz',

        ('counsyl.product.common.enumerated_types', 'G'),
        'counsyl.product.common.state.flow',
        ('zutil', 'z'),
    ]
