package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface ObjectEncoderContext {
    @NonNull
    ObjectEncoderContext a(@NonNull FieldDescriptor fieldDescriptor, long j) throws IOException;

    @NonNull
    ObjectEncoderContext b(@NonNull FieldDescriptor fieldDescriptor, int i) throws IOException;

    @NonNull
    ObjectEncoderContext d(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj) throws IOException;
}
