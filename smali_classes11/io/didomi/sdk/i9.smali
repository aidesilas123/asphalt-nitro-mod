###### Class io.didomi.drawable.i9 (io.didomi.sdk.i9)
.class public final Lio/didomi/sdk/i9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/h9;",
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


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 9
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/i9;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/i9;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/i9;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/i9;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/i9;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/i9;->f:Le/a/a;

    iput-object p7, p0, Lio/didomi/sdk/i9;->g:Le/a/a;

    iput-object p8, p0, Lio/didomi/sdk/i9;->h:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)Lio/didomi/sdk/h9;
    .registers 18

    new-instance v9, Lio/didomi/sdk/h9;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V

    return-object v9
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/i9;
    .registers 18
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
            ">;)",
            "Lio/didomi/sdk/i9;"
        }
    .end annotation

    new-instance v9, Lio/didomi/sdk/i9;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/i9;-><init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v9
.end method


# virtual methods
.method public a()Lio/didomi/sdk/h9;
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/i9;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/apiEvents/b;

    iget-object v0, p0, Lio/didomi/sdk/i9;->b:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/didomi/sdk/H;

    iget-object v0, p0, Lio/didomi/sdk/i9;->c:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/didomi/sdk/M2;

    iget-object v0, p0, Lio/didomi/sdk/i9;->d:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/didomi/sdk/v3;

    iget-object v0, p0, Lio/didomi/sdk/i9;->e:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/didomi/sdk/z8;

    iget-object v0, p0, Lio/didomi/sdk/i9;->f:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/didomi/sdk/G8;

    iget-object v0, p0, Lio/didomi/sdk/i9;->g:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lio/didomi/sdk/V8;

    iget-object v0, p0, Lio/didomi/sdk/i9;->h:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/didomi/sdk/C3;

    invoke-static/range {v1 .. v8}, Lio/didomi/sdk/i9;->a(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)Lio/didomi/sdk/h9;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/i9;->a()Lio/didomi/sdk/h9;

    move-result-object v0

    return-object v0
.end method
