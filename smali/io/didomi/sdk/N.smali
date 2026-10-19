###### Class io.didomi.drawable.N (io.didomi.sdk.N)
.class public final Lio/didomi/sdk/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/s3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/L;

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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/L;Le/a/a;Le/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/L;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/N;->a:Lio/didomi/sdk/L;

    iput-object p2, p0, Lio/didomi/sdk/N;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/N;->c:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/L;Le/a/a;Le/a/a;)Lio/didomi/sdk/N;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/L;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lio/didomi/sdk/N;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/N;

    invoke-direct {v0, p0, p1, p2}, Lio/didomi/sdk/N;-><init>(Lio/didomi/sdk/L;Le/a/a;Le/a/a;)V

    return-object v0
.end method

.method public static a(Lio/didomi/sdk/L;Lio/didomi/sdk/H;Landroid/content/Context;)Lio/didomi/sdk/s3;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/L;->a(Lio/didomi/sdk/H;Landroid/content/Context;)Lio/didomi/sdk/s3;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/s3;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/s3;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/N;->a:Lio/didomi/sdk/L;

    iget-object v1, p0, Lio/didomi/sdk/N;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/N;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/N;->a(Lio/didomi/sdk/L;Lio/didomi/sdk/H;Landroid/content/Context;)Lio/didomi/sdk/s3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/N;->a()Lio/didomi/sdk/s3;

    move-result-object v0

    return-object v0
.end method
