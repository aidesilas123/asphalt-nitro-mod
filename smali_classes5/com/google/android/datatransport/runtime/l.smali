###### Class com.google.android.datatransport.runtime.l (com.google.android.datatransport.runtime.l)
.class final Lcom/google/android/datatransport/runtime/l;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lcom/google/android/datatransport/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/TransportContext;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/datatransport/Encoding;

.field private final d:Lcom/google/android/datatransport/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/b<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/datatransport/runtime/m;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/runtime/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/Encoding;",
            "Lcom/google/android/datatransport/b<",
            "TT;[B>;",
            "Lcom/google/android/datatransport/runtime/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/l;->a:Lcom/google/android/datatransport/runtime/TransportContext;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/l;->c:Lcom/google/android/datatransport/Encoding;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/l;->d:Lcom/google/android/datatransport/b;

    iput-object p5, p0, Lcom/google/android/datatransport/runtime/l;->e:Lcom/google/android/datatransport/runtime/m;

    return-void
.end method

.method static synthetic b(Ljava/lang/Exception;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/Event;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/datatransport/runtime/a;->a:Lcom/google/android/datatransport/runtime/a;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/runtime/l;->c(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/e;)V

    return-void
.end method

.method public c(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "TT;>;",
            "Lcom/google/android/datatransport/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/l;->e:Lcom/google/android/datatransport/runtime/m;

    invoke-static {}, Lcom/google/android/datatransport/runtime/SendRequest;->builder()Lcom/google/android/datatransport/runtime/SendRequest$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/l;->a:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/SendRequest$a;->e(Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/SendRequest$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/SendRequest$a;->c(Lcom/google/android/datatransport/Event;)Lcom/google/android/datatransport/runtime/SendRequest$a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$a;->f(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/SendRequest$a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/l;->d:Lcom/google/android/datatransport/b;

    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$a;->d(Lcom/google/android/datatransport/b;)Lcom/google/android/datatransport/runtime/SendRequest$a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/l;->c:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$a;->b(Lcom/google/android/datatransport/Encoding;)Lcom/google/android/datatransport/runtime/SendRequest$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest$a;->a()Lcom/google/android/datatransport/runtime/SendRequest;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/m;->a(Lcom/google/android/datatransport/runtime/SendRequest;Lcom/google/android/datatransport/e;)V

    return-void
.end method
