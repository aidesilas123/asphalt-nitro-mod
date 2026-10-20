###### Class com.google.android.datatransport.runtime.retries.b (com.google.android.datatransport.runtime.retries.b)
.class public interface abstract Lcom/google/android/datatransport/runtime/retries/b;
.super Ljava/lang/Object;
.source "RetryStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTInput;TTResult;)TTInput;"
        }
    .end annotation
.end method
