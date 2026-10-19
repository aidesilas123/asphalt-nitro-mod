###### Class com.hyprmx.android.sdk.initialization.b (com.hyprmx.android.sdk.initialization.b)
.class public interface abstract Lcom/hyprmx/android/sdk/initialization/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/initialization/b$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/hyprmx/android/sdk/core/j$k;)Ljava/lang/Object;
.end method

.method public abstract a(Lcom/hyprmx/android/sdk/initialization/c;Lkotlin/coroutines/jvm/internal/c;)Ljava/lang/Object;
.end method

###### Class com.hyprmx.android.sdk.initialization.b.a (com.hyprmx.android.sdk.initialization.b$a)
.class public interface abstract Lcom/hyprmx/android/sdk/initialization/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract initializationFailed(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract initializationSuccessWithPlacements(Ljava/lang/String;I)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract initializeOMSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract setEnableAllLogs(Z)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract setSharingEndpoint(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract updateJavascript(Ljava/lang/String;II)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method
