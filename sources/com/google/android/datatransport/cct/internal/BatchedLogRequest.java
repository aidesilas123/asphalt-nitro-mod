package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
@Encodable
public abstract class BatchedLogRequest {
    @NonNull
    public static BatchedLogRequest create(@NonNull List<LogRequest> list) {
        return new c(list);
    }

    @NonNull
    public static DataEncoder createDataEncoder() {
        return new JsonDataEncoderBuilder().g(a.a).h(true).f();
    }

    @NonNull
    @Encodable.Field
    public abstract List<LogRequest> a();
}
