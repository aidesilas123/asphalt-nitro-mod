###### Class io.didomi.drawable.C1781h4 (io.didomi.sdk.h4)
.class public final Lio/didomi/sdk/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/C3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/g4;

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/i3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/g4;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g4;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/i3;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h4;->a:Lio/didomi/sdk/g4;

    iput-object p2, p0, Lio/didomi/sdk/h4;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/h4;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/h4;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/h4;->e:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/g4;Lio/didomi/sdk/H;Lio/didomi/sdk/Z;Lio/didomi/sdk/i3;Lkotlinx/coroutines/r;)Lio/didomi/sdk/C3;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/g4;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/Z;Lio/didomi/sdk/i3;Lkotlinx/coroutines/r;)Lio/didomi/sdk/C3;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/C3;

    return-object p0
.end method

.method public static a(Lio/didomi/sdk/g4;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/h4;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g4;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/i3;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)",
            "Lio/didomi/sdk/h4;"
        }
    .end annotation

    new-instance v6, Lio/didomi/sdk/h4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/h4;-><init>(Lio/didomi/sdk/g4;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v6
.end method


# virtual methods
.method public a()Lio/didomi/sdk/C3;
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/h4;->a:Lio/didomi/sdk/g4;

    iget-object v1, p0, Lio/didomi/sdk/h4;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/h4;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/Z;

    iget-object v3, p0, Lio/didomi/sdk/h4;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/i3;

    iget-object v4, p0, Lio/didomi/sdk/h4;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/r;

    invoke-static {v0, v1, v2, v3, v4}, Lio/didomi/sdk/h4;->a(Lio/didomi/sdk/g4;Lio/didomi/sdk/H;Lio/didomi/sdk/Z;Lio/didomi/sdk/i3;Lkotlinx/coroutines/r;)Lio/didomi/sdk/C3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h4;->a()Lio/didomi/sdk/C3;

    move-result-object v0

    return-object v0
.end method
