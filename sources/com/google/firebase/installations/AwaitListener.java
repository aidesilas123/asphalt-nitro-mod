package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes3.dex */
final class AwaitListener implements OnCompleteListener<Void> {
    private final CountDownLatch a = new CountDownLatch(1);

    AwaitListener() {
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(@NonNull Task<Void> task) {
        this.a.countDown();
    }
}
