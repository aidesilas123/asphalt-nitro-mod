###### Class io.didomi.drawable.C1713a6 (io.didomi.sdk.a6)
.class public final Lio/didomi/sdk/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/c6;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/Z5;

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
            "Lio/didomi/sdk/Z2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/V;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/M2;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/P3;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/P8;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/Z5;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/Z5;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/b;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M2;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/P3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/P8;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a6;->a:Lio/didomi/sdk/Z5;

    iput-object p2, p0, Lio/didomi/sdk/a6;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/a6;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/a6;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/a6;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/a6;->f:Le/a/a;

    iput-object p7, p0, Lio/didomi/sdk/a6;->g:Le/a/a;

    iput-object p8, p0, Lio/didomi/sdk/a6;->h:Le/a/a;

    iput-object p9, p0, Lio/didomi/sdk/a6;->i:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/Z5;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/a6;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/Z5;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/b;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M2;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/P3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/P8;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)",
            "Lio/didomi/sdk/a6;"
        }
    .end annotation

    new-instance v10, Lio/didomi/sdk/a6;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/didomi/sdk/a6;-><init>(Lio/didomi/sdk/Z5;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v10
.end method

.method public static a(Lio/didomi/sdk/Z5;Lio/didomi/sdk/H;Lio/didomi/sdk/Z2;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/r;)Lio/didomi/sdk/c6;
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lio/didomi/sdk/Z5;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/Z2;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/r;)Lio/didomi/sdk/c6;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/c6;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/c6;
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/a6;->a:Lio/didomi/sdk/Z5;

    iget-object v1, p0, Lio/didomi/sdk/a6;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/a6;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/Z2;

    iget-object v3, p0, Lio/didomi/sdk/a6;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/V;

    iget-object v4, p0, Lio/didomi/sdk/a6;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/apiEvents/b;

    iget-object v5, p0, Lio/didomi/sdk/a6;->f:Le/a/a;

    invoke-interface {v5}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/didomi/sdk/M2;

    iget-object v6, p0, Lio/didomi/sdk/a6;->g:Le/a/a;

    invoke-interface {v6}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/didomi/sdk/P3;

    iget-object v7, p0, Lio/didomi/sdk/a6;->h:Le/a/a;

    invoke-interface {v7}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/didomi/sdk/P8;

    iget-object v8, p0, Lio/didomi/sdk/a6;->i:Le/a/a;

    invoke-interface {v8}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/r;

    invoke-static/range {v0 .. v8}, Lio/didomi/sdk/a6;->a(Lio/didomi/sdk/Z5;Lio/didomi/sdk/H;Lio/didomi/sdk/Z2;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/r;)Lio/didomi/sdk/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a6;->a()Lio/didomi/sdk/c6;

    move-result-object v0

    return-object v0
.end method
