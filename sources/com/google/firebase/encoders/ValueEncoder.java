package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface ValueEncoder<T> extends Encoder<T, ValueEncoderContext> {
    /* synthetic */ void a(@NonNull TValue tvalue, @NonNull TContext tcontext) throws IOException;
}
