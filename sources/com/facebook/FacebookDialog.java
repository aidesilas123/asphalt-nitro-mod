package com.facebook;

import androidx.activity.result.contract.ActivityResultContract;
import com.facebook.CallbackManager;

/* JADX INFO: compiled from: FacebookDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface FacebookDialog<CONTENT, RESULT> {
    boolean canShow(CONTENT content);

    ActivityResultContract<CONTENT, CallbackManager.ActivityResultParameters> createActivityResultContractForShowingDialog(CallbackManager callbackManager);

    void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback);

    void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int i);

    void show(CONTENT content);
}
