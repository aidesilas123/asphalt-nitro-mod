###### Class io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity.b (io.didomi.sdk.preferences.ctv.TVPreferencesDialogActivity$b)
.class final Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "OPEN_SUBSCREEN"

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_25

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    const-class v2, Lio/didomi/sdk/Y5;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/didomi/sdk/Y5;

    :cond_20
    sget-object v0, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    if-ne v2, v0, :cond_3d

    goto :goto_3b

    :cond_25
    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_37
    sget-object v0, Lio/didomi/sdk/Y5;->a:Lio/didomi/sdk/Y5;

    if-ne v2, v0, :cond_3d

    :goto_3b
    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
