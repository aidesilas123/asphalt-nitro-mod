###### Class com.tapjoy.internal.u1 (com.tapjoy.internal.u1)
.class public final Lcom/tapjoy/internal/u1;
.super Lcom/tapjoy/internal/p9;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/p9;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput p3, p0, Lcom/tapjoy/internal/u1;->c:I

    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c()I
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tapjoy/internal/u1;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
