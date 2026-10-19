###### Class io.didomi.drawable.user.UserAuthParams (io.didomi.sdk.user.UserAuthParams)
.class public interface abstract Lio/didomi/sdk/user/UserAuthParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/user/UserAuth;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008g\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/user/UserAuthParams;",
        "Lio/didomi/sdk/user/UserAuth;",
        "algorithm",
        "",
        "getAlgorithm",
        "()Ljava/lang/String;",
        "expiration",
        "",
        "getExpiration",
        "()Ljava/lang/Long;",
        "secretId",
        "getSecretId",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getExpiration()Ljava/lang/Long;
.end method

.method public abstract getSecretId()Ljava/lang/String;
.end method
