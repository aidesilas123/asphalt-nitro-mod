package androidx.work;

import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public interface RunnableScheduler {
    void cancel(@NonNull Runnable runnable);

    void scheduleWithDelay(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) long j, @NonNull Runnable runnable);
}
