package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface ObjectEncoder<T> extends Encoder<T, ObjectEncoderContext> {
    /* synthetic */ void a(@NonNull TValue tvalue, @NonNull TContext tcontext) throws IOException;
}
