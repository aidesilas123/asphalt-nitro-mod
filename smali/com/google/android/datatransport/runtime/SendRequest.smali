###### Class com.google.android.datatransport.runtime.SendRequest (com.google.android.datatransport.runtime.SendRequest)
.class abstract Lcom/google/android/datatransport/runtime/SendRequest;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/SendRequest$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/datatransport/runtime/SendRequest$a;
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/d$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/d$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/Encoding;
.end method

.method abstract b()Lcom/google/android/datatransport/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation
.end method

.method public c()[B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/SendRequest;->d()Lcom/google/android/datatransport/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/SendRequest;->b()Lcom/google/android/datatransport/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method abstract d()Lcom/google/android/datatransport/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/b<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/google/android/datatransport/runtime/TransportContext;
.end method

.method public abstract f()Ljava/lang/String;
.end method

###### Class com.google.android.datatransport.runtime.SendRequest.a (com.google.android.datatransport.runtime.SendRequest$a)
.class public abstract Lcom/google/android/datatransport/runtime/SendRequest$a;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/SendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/runtime/SendRequest;
.end method

.method abstract b(Lcom/google/android/datatransport/Encoding;)Lcom/google/android/datatransport/runtime/SendRequest$a;
.end method

.method abstract c(Lcom/google/android/datatransport/Event;)Lcom/google/android/datatransport/runtime/SendRequest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "*>;)",
            "Lcom/google/android/datatransport/runtime/SendRequest$a;"
        }
    .end annotation
.end method

.method abstract d(Lcom/google/android/datatransport/b;)Lcom/google/android/datatransport/runtime/SendRequest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/b<",
            "*[B>;)",
            "Lcom/google/android/datatransport/runtime/SendRequest$a;"
        }
    .end annotation
.end method

.method public abstract e(Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/SendRequest$a;
.end method

.method public abstract f(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/SendRequest$a;
.end method
