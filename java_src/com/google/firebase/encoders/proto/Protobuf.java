package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.annotations.ExtraProperty;
@ExtraProperty
/* loaded from: classes2.dex */
public @interface Protobuf {

    /* loaded from: classes2.dex */
    public enum IntEncoding {
        DEFAULT,
        SIGNED,
        FIXED
    }

    IntEncoding intEncoding() default IntEncoding.DEFAULT;

    int tag();
}
