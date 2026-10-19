###### Class io.didomi.drawable.N8 (io.didomi.sdk.N8)
.class public final Lio/didomi/sdk/N8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/M8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/N8;->a:Le/a/a;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Lio/didomi/sdk/M8;
    .registers 2

    new-instance v0, Lio/didomi/sdk/M8;

    invoke-direct {v0, p0}, Lio/didomi/sdk/M8;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public static a(Le/a/a;)Lio/didomi/sdk/N8;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lio/didomi/sdk/N8;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/N8;

    invoke-direct {v0, p0}, Lio/didomi/sdk/N8;-><init>(Le/a/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/M8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/N8;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {v0}, Lio/didomi/sdk/N8;->a(Landroid/content/SharedPreferences;)Lio/didomi/sdk/M8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/N8;->a()Lio/didomi/sdk/M8;

    move-result-object v0

    return-object v0
.end method
