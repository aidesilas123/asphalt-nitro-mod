###### Class io.didomi.drawable.V2 (io.didomi.sdk.V2)
.class public final Lio/didomi/sdk/V2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/Z;",
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
            "Lio/didomi/sdk/DidomiInitializeParameters;",
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


# direct methods
.method public constructor <init>(Lio/didomi/sdk/T2;Le/a/a;Le/a/a;Le/a/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/T2;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/DidomiInitializeParameters;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/z3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/V2;->a:Lio/didomi/sdk/T2;

    iput-object p2, p0, Lio/didomi/sdk/V2;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/V2;->c:Le/a/a;

    iput-object p4, p0, Lio/didomi/sdk/V2;->d:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/T2;Le/a/a;Le/a/a;Le/a/a;)Lio/didomi/sdk/V2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/T2;",
            "Le/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/DidomiInitializeParameters;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/z3;",
            ">;)",
            "Lio/didomi/sdk/V2;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/V2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/didomi/sdk/V2;-><init>(Lio/didomi/sdk/T2;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v0
.end method

.method public static a(Lio/didomi/sdk/T2;Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)Lio/didomi/sdk/Z;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/T2;->a(Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)Lio/didomi/sdk/Z;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/Z;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/Z;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/V2;->a:Lio/didomi/sdk/T2;

    iget-object v1, p0, Lio/didomi/sdk/V2;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lio/didomi/sdk/V2;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/DidomiInitializeParameters;

    iget-object v3, p0, Lio/didomi/sdk/V2;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/z3;

    invoke-static {v0, v1, v2, v3}, Lio/didomi/sdk/V2;->a(Lio/didomi/sdk/T2;Landroid/content/Context;Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/z3;)Lio/didomi/sdk/Z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V2;->a()Lio/didomi/sdk/Z;

    move-result-object v0

    return-object v0
.end method
