package io.didomi.drawable.user;

import androidx.annotation.Keep;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0005¨\u0006\f"}, d2 = {"Lio/didomi/sdk/user/UserAuthParams;", "Lio/didomi/sdk/user/UserAuth;", "algorithm", "", "getAlgorithm", "()Ljava/lang/String;", "expiration", "", "getExpiration", "()Ljava/lang/Long;", "secretId", "getSecretId", "android_release"}, mv = {1, 8, 0}, xi = 48)
public interface UserAuthParams extends UserAuth {
    String getAlgorithm();

    Long getExpiration();

    String getSecretId();
}
