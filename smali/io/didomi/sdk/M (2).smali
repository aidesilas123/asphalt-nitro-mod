###### Class io.didomi.drawable.M (io.didomi.sdk.M)
.class public final Lio/didomi/sdk/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/V;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/L;

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
            "Lio/didomi/sdk/V8;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/j0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/h3;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/L;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/L;",
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/j0;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/h3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/M;->a:Lio/didomi/sdk/L;

    iput-object p2, p0, Lio/didomi/sdk/M;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/M;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/M;->d:Le/a/a;

    iput-object p5, p0, Lio/didomi/sdk/M;->e:Le/a/a;

    iput-object p6, p0, Lio/didomi/sdk/M;->f:Le/a/a;

    iput-object p7, p0, Lio/didomi/sdk/M;->g:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/L;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/M;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/L;",
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/V8;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/j0;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/h3;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/v3;",
            ">;)",
            "Lio/didomi/sdk/M;"
        }
    .end annotation

    new-instance v8, Lio/didomi/sdk/M;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lio/didomi/sdk/M;-><init>(Lio/didomi/sdk/L;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v8
.end method

.method public static a(Lio/didomi/sdk/L;Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)Lio/didomi/sdk/V;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lio/didomi/sdk/L;->a(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)Lio/didomi/sdk/V;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/V;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/V;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/M;->a:Lio/didomi/sdk/L;

    iget-object v1, p0, Lio/didomi/sdk/M;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lio/didomi/sdk/M;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/V8;

    iget-object v3, p0, Lio/didomi/sdk/M;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/H;

    iget-object v4, p0, Lio/didomi/sdk/M;->e:Le/a/a;

    invoke-interface {v4}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/j0;

    iget-object v5, p0, Lio/didomi/sdk/M;->f:Le/a/a;

    invoke-interface {v5}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/didomi/sdk/h3;

    iget-object v6, p0, Lio/didomi/sdk/M;->g:Le/a/a;

    invoke-interface {v6}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/didomi/sdk/v3;

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/M;->a(Lio/didomi/sdk/L;Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)Lio/didomi/sdk/V;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/M;->a()Lio/didomi/sdk/V;

    move-result-object v0

    return-object v0
.end method
