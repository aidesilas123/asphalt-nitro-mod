package androidx.core.location;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: compiled from: LocationListenerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u {
    public static void a(LocationListenerCompat locationListenerCompat, int i) {
    }

    public static void b(@NonNull LocationListenerCompat locationListenerCompat, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            locationListenerCompat.onLocationChanged((Location) list.get(i));
        }
    }

    public static void c(@NonNull LocationListenerCompat locationListenerCompat, String str) {
    }

    public static void d(@NonNull LocationListenerCompat locationListenerCompat, String str) {
    }

    public static void e(@NonNull LocationListenerCompat locationListenerCompat, String str, @Nullable int i, Bundle bundle) {
    }
}
