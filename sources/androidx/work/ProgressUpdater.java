package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.common.util.concurrent.h0;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public interface ProgressUpdater {
    @NonNull
    h0<Void> updateProgress(@NonNull Context context, @NonNull UUID uuid, @NonNull Data data);
}
