###### Class io.didomi.drawable.X2 (io.didomi.sdk.X2)
.class public final Lio/didomi/sdk/X2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/l5;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/T2;

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
            "Lio/didomi/sdk/J;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
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
.method public constructor <init>(Lio/didomi/sdk/T2;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/T2;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/J;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/X2;->a:Lio/didomi/sdk/T2;

    iput-object p2, p0, Lio/didomi/sdk/X2;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/X2;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/X2;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/X2;->e:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/T2;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/X2;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/T2;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/J;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z2;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)",
            "Lio/didomi/sdk/X2;"
        }
    .end annotation

    new-instance v6, Lio/didomi/sdk/X2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/X2;-><init>(Lio/didomi/sdk/T2;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v6
.end method

.method public static a(Lio/didomi/sdk/T2;Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)Lio/didomi/sdk/l5;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/T2;->a(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)Lio/didomi/sdk/l5;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/l5;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/l5;
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/X2;->a:Lio/didomi/sdk/T2;

    iget-object v1, p0, Lio/didomi/sdk/X2;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lio/didomi/sdk/X2;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/J;

    iget-object v3, p0, Lio/didomi/sdk/X2;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/Z2;

    iget-object v4, p0, Lio/didomi/sdk/X2;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/r;

    invoke-static {v0, v1, v2, v3, v4}, Lio/didomi/sdk/X2;->a(Lio/didomi/sdk/T2;Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)Lio/didomi/sdk/l5;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/X2;->a()Lio/didomi/sdk/l5;

    move-result-object v0

    return-object v0
.end method
