###### Class io.didomi.drawable.C1776h (io.didomi.sdk.h)
.class public final Lio/didomi/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/apiEvents/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/g;

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/J;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/g;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g;",
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/a;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/J;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h;->a:Lio/didomi/sdk/g;

    iput-object p2, p0, Lio/didomi/sdk/h;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/h;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/h;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/h;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/h;->f:Le/a/a;

    iput-object p7, p0, Lio/didomi/sdk/h;->g:Le/a/a;

    iput-object p8, p0, Lio/didomi/sdk/h;->h:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/g;Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;)Lio/didomi/sdk/apiEvents/b;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lio/didomi/sdk/g;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;)Lio/didomi/sdk/apiEvents/b;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/apiEvents/b;

    return-object p0
.end method

.method public static a(Lio/didomi/sdk/g;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/h;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g;",
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/a;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/J;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;)",
            "Lio/didomi/sdk/h;"
        }
    .end annotation

    new-instance v9, Lio/didomi/sdk/h;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/h;-><init>(Lio/didomi/sdk/g;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v9
.end method


# virtual methods
.method public a()Lio/didomi/sdk/apiEvents/b;
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/h;->a:Lio/didomi/sdk/g;

    iget-object v1, p0, Lio/didomi/sdk/h;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/apiEvents/a;

    iget-object v2, p0, Lio/didomi/sdk/h;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/J;

    iget-object v3, p0, Lio/didomi/sdk/h;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/Z;

    iget-object v4, p0, Lio/didomi/sdk/h;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/Z2;

    iget-object v5, p0, Lio/didomi/sdk/h;->f:Le/a/a;

    invoke-interface {v5}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/r;

    iget-object v6, p0, Lio/didomi/sdk/h;->g:Le/a/a;

    invoke-interface {v6}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/didomi/sdk/V8;

    iget-object v7, p0, Lio/didomi/sdk/h;->h:Le/a/a;

    invoke-interface {v7}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/didomi/sdk/H;

    invoke-static/range {v0 .. v7}, Lio/didomi/sdk/h;->a(Lio/didomi/sdk/g;Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;)Lio/didomi/sdk/apiEvents/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h;->a()Lio/didomi/sdk/apiEvents/b;

    move-result-object v0

    return-object v0
.end method
