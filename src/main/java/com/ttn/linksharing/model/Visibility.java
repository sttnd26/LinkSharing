package com.ttn.linksharing.model;

/**
 * Created by MAHE on 7/13/2017.
 */

enum Visibility {

    PRIVATE,PUBLIC;

    static Visibility convert(String str) {
        for (Visibility visibility : Visibility.values()) {
            if (visibility.toString().equalsIgnoreCase(str)) {
                return visibility;
            }
        }
        return null;
    }
    }
