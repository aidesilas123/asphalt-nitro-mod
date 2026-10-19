###### Class com.hyprmx.android.sdk.placement.a (com.hyprmx.android.sdk.placement.a)
.class public interface abstract Lcom/hyprmx/android/sdk/placement/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/hyprmx/android/sdk/placement/c$a;)Lkotlin/v;
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public abstract getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/c;
.end method

.method public abstract getPlacements()Ljava/util/LinkedHashSet;
.end method

.method public abstract onAdCleared(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract onAdExpired(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract onLoadAdFailure(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract onLoadAdSuccess(Ljava/lang/String;Z)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method
