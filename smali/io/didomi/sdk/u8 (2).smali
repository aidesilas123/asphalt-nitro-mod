###### Class io.didomi.drawable.C1915u8 (io.didomi.sdk.u8)
.class public final Lio/didomi/sdk/u8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/t8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/b;",
            ">;"
        }
    .end annotation
.end field

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
            "Lio/didomi/sdk/M2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/z8;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/G8;",
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
            "Lio/didomi/sdk/C3;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/s5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/b;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M2;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/z8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/G8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/s5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/u8;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/u8;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/u8;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/u8;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/u8;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/u8;->f:Le/a/a;

    iput-object p7, p0, Lio/didomi/sdk/u8;->g:Le/a/a;

    iput-object p8, p0, Lio/didomi/sdk/u8;->h:Le/a/a;

    iput-object p9, p0, Lio/didomi/sdk/u8;->i:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)Lio/didomi/sdk/t8;
    .registers 20

    new-instance v10, Lio/didomi/sdk/t8;

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

    invoke-direct/range {v0 .. v9}, Lio/didomi/sdk/t8;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)V

    return-object v10
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/u8;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/apiEvents/b;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M2;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/z8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/G8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/s5;",
            ">;)",
            "Lio/didomi/sdk/u8;"
        }
    .end annotation

    new-instance v10, Lio/didomi/sdk/u8;

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

    invoke-direct/range {v0 .. v9}, Lio/didomi/sdk/u8;-><init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v10
.end method


# virtual methods
.method public a()Lio/didomi/sdk/t8;
    .registers 11

    iget-object v0, p0, Lio/didomi/sdk/u8;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/apiEvents/b;

    iget-object v0, p0, Lio/didomi/sdk/u8;->b:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/didomi/sdk/H;

    iget-object v0, p0, Lio/didomi/sdk/u8;->c:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/didomi/sdk/M2;

    iget-object v0, p0, Lio/didomi/sdk/u8;->d:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/didomi/sdk/v3;

    iget-object v0, p0, Lio/didomi/sdk/u8;->e:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/didomi/sdk/z8;

    iget-object v0, p0, Lio/didomi/sdk/u8;->f:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/didomi/sdk/G8;

    iget-object v0, p0, Lio/didomi/sdk/u8;->g:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lio/didomi/sdk/V8;

    iget-object v0, p0, Lio/didomi/sdk/u8;->h:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/didomi/sdk/C3;

    iget-object v0, p0, Lio/didomi/sdk/u8;->i:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lio/didomi/sdk/s5;

    invoke-static/range {v1 .. v9}, Lio/didomi/sdk/u8;->a(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)Lio/didomi/sdk/t8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/u8;->a()Lio/didomi/sdk/t8;

    move-result-object v0

    return-object v0
.end method
