###### Class io.didomi.drawable.C1796j (io.didomi.sdk.j)
.class public final Lio/didomi/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/apiEvents/a;",
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
            "Lio/didomi/sdk/P3;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/F8;",
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
            "Lio/didomi/sdk/Z;",
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
            "Lio/didomi/sdk/P3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/F8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/j;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/j;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/j;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/j;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/j;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/j;->f:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/P3;Lio/didomi/sdk/F8;Lio/didomi/sdk/M8;Lio/didomi/sdk/Z;)Lio/didomi/sdk/apiEvents/a;
    .registers 14

    new-instance v7, Lio/didomi/sdk/apiEvents/a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/apiEvents/a;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/P3;Lio/didomi/sdk/F8;Lio/didomi/sdk/M8;Lio/didomi/sdk/Z;)V

    return-object v7
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/j;
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
            "Lio/didomi/sdk/P3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/F8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;)",
            "Lio/didomi/sdk/j;"
        }
    .end annotation

    new-instance v7, Lio/didomi/sdk/j;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/j;-><init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v7
.end method


# virtual methods
.method public a()Lio/didomi/sdk/apiEvents/a;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/j;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/H;

    iget-object v0, p0, Lio/didomi/sdk/j;->b:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/didomi/sdk/V;

    iget-object v0, p0, Lio/didomi/sdk/j;->c:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/didomi/sdk/P3;

    iget-object v0, p0, Lio/didomi/sdk/j;->d:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/didomi/sdk/F8;

    iget-object v0, p0, Lio/didomi/sdk/j;->e:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/didomi/sdk/M8;

    iget-object v0, p0, Lio/didomi/sdk/j;->f:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/didomi/sdk/Z;

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/j;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/P3;Lio/didomi/sdk/F8;Lio/didomi/sdk/M8;Lio/didomi/sdk/Z;)Lio/didomi/sdk/apiEvents/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/j;->a()Lio/didomi/sdk/apiEvents/a;

    move-result-object v0

    return-object v0
.end method
