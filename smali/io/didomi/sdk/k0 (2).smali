###### Class io.didomi.drawable.C1807k0 (io.didomi.sdk.k0)
.class public final Lio/didomi/sdk/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/j0;",
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
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/h0;",
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
.method public constructor <init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/h0;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/k0;->a:Le/a/a;

    iput-object p2, p0, Lio/didomi/sdk/k0;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/k0;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/k0;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/k0;->e:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)Lio/didomi/sdk/j0;
    .registers 12

    new-instance v6, Lio/didomi/sdk/j0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/j0;-><init>(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)V

    return-object v6
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/k0;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/M8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/h0;",
            ">;",
            "Le/a/a<",
            "Lkotlinx/coroutines/r;",
            ">;)",
            "Lio/didomi/sdk/k0;"
        }
    .end annotation

    new-instance v6, Lio/didomi/sdk/k0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/k0;-><init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v6
.end method


# virtual methods
.method public a()Lio/didomi/sdk/j0;
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/k0;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/H;

    iget-object v1, p0, Lio/didomi/sdk/k0;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lio/didomi/sdk/k0;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/M8;

    iget-object v3, p0, Lio/didomi/sdk/k0;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/h0;

    iget-object v4, p0, Lio/didomi/sdk/k0;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/r;

    invoke-static {v0, v1, v2, v3, v4}, Lio/didomi/sdk/k0;->a(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)Lio/didomi/sdk/j0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/k0;->a()Lio/didomi/sdk/j0;

    move-result-object v0

    return-object v0
.end method
