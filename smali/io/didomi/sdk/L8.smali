###### Class io.didomi.drawable.L8 (io.didomi.sdk.L8)
.class public final Lio/didomi/sdk/L8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/K8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/V;",
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
            "Lio/didomi/sdk/v3;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/L8;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/L8;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/L8;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/L8;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/L8;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/L8;->f:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/M8;Lio/didomi/sdk/C3;)Lio/didomi/sdk/K8;
    .registers 14

    new-instance v7, Lio/didomi/sdk/K8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/K8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/M8;Lio/didomi/sdk/C3;)V

    return-object v7
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/L8;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/C3;",
            ">;)",
            "Lio/didomi/sdk/L8;"
        }
    .end annotation

    new-instance v7, Lio/didomi/sdk/L8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/L8;-><init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v7
.end method


# virtual methods
.method public a()Lio/didomi/sdk/K8;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/L8;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/H;

    iget-object v0, p0, Lio/didomi/sdk/L8;->b:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/didomi/sdk/V;

    iget-object v0, p0, Lio/didomi/sdk/L8;->c:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/didomi/sdk/Z;

    iget-object v0, p0, Lio/didomi/sdk/L8;->d:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/didomi/sdk/v3;

    iget-object v0, p0, Lio/didomi/sdk/L8;->e:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/didomi/sdk/M8;

    iget-object v0, p0, Lio/didomi/sdk/L8;->f:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/didomi/sdk/C3;

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/L8;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/M8;Lio/didomi/sdk/C3;)Lio/didomi/sdk/K8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/L8;->a()Lio/didomi/sdk/K8;

    move-result-object v0

    return-object v0
.end method
