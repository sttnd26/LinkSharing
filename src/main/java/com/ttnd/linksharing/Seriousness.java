package com.ttnd.linksharing;

public enum Seriousness {

    CASUAL,SERIOUS,VERY_SERIOUS;

//    static Seriousness convert(String str) {
//        return str as Seriousness;
//    }

    static Seriousness convert(String str) {
        for (Seriousness seriousness : Seriousness.values()) {
            if (seriousness.toString().equalsIgnoreCase(str)) {
                return seriousness;
            }
        }
        return null;
    }
}
