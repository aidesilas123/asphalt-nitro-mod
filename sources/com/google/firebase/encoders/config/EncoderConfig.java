package com.google.firebase.encoders.config;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;

/* JADX INFO: loaded from: classes3.dex */
public interface EncoderConfig<T extends EncoderConfig<T>> {
    @NonNull
    <U> T a(@NonNull Class<U> cls, @NonNull ObjectEncoder<? super U> objectEncoder);
}
