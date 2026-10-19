package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface ValueEncoderContext {
    @NonNull
    ValueEncoderContext c(@Nullable String str) throws IOException;

    @NonNull
    ValueEncoderContext e(boolean z) throws IOException;
}
