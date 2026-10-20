###### Class io.didomi.drawable.G (io.didomi.sdk.G)
.class public final Lio/didomi/sdk/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/H;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/F;

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Landroid/content/Context;",
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
            "Lio/didomi/sdk/z3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/DidomiInitializeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/l5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/F;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/F;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/z3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/DidomiInitializeParameters;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/l5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/G;->a:Lio/didomi/sdk/F;

    iput-object p2, p0, Lio/didomi/sdk/G;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/G;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/G;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/G;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/G;->f:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/F;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/G;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/F;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/z3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/DidomiInitializeParameters;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/l5;",
            ">;)",
            "Lio/didomi/sdk/G;"
        }
    .end annotation

    new-instance v7, Lio/didomi/sdk/G;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/G;-><init>(Lio/didomi/sdk/F;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v7
.end method

.method public static a(Lio/didomi/sdk/F;Landroid/content/Context;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/l5;)Lio/didomi/sdk/H;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lio/didomi/sdk/F;->a(Landroid/content/Context;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/l5;)Lio/didomi/sdk/H;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/H;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/H;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/G;->a:Lio/didomi/sdk/F;

    iget-object v1, p0, Lio/didomi/sdk/G;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lio/didomi/sdk/G;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/Z;

    iget-object v3, p0, Lio/didomi/sdk/G;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/z3;

    iget-object v4, p0, Lio/didomi/sdk/G;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/DidomiInitializeParameters;

    iget-object v5, p0, Lio/didomi/sdk/G;->f:Le/a/a;

    invoke-interface {v5}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/didomi/sdk/l5;

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/G;->a(Lio/didomi/sdk/F;Landroid/content/Context;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/l5;)Lio/didomi/sdk/H;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/G;->a()Lio/didomi/sdk/H;

    move-result-object v0

    return-object v0
.end method
