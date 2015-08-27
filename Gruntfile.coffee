module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-contrib-jshint'
    grunt.initConfig(
        pkg: grunt.file.readJSON 'package.json' 
        uglify:
            app_task: 
                options: 
                    beautify: false
                    mangle: true 
                    compress:false 
                files:
                    'build/hotkeys.min.js': [
                        'js/hotkeys.js'
                    ]
        jshint: 
            options:
                eqeqeq: true
                trailing: true 
            files: ['js/hotkeys.js']
        watch: 
            another: 
                files: ['js/*.js']
                tasks: ['jshint','uglify']
                options: 
                    livereload: 1244
    )
    grunt.registerTask 'default', ['watch']
