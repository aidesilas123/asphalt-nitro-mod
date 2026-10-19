###### Class io.didomi.drawable.C1800j3 (io.didomi.sdk.j3)
.class public final Lio/didomi/sdk/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/i3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/j3;->a:Le/a/a;

    return-void
.end method

.method public static a(Lkotlinx/coroutines/r;)Lio/didomi/sdk/i3;
    .registers 2

    new-instance v0, Lio/didomi/sdk/i3;

    invoke-direct {v0, p0}, Lio/didomi/sdk/i3;-><init>(Lkotlinx/coroutines/r;)V

    return-object v0
.end method

.method public static a(Le/a/a;)Lio/didomi/sdk/j3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)",
            "Lio/didomi/sdk/j3;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/j3;

    invoke-direct {v0, p0}, Lio/didomi/sdk/j3;-><init>(Le/a/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/i3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j3;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/r;

    invoke-static {v0}, Lio/didomi/sdk/j3;->a(Lkotlinx/coroutines/r;)Lio/didomi/sdk/i3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/j3;->a()Lio/didomi/sdk/i3;

    move-result-object v0

    return-object v0
.end method
