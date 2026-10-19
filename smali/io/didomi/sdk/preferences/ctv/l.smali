###### Class io.didomi.drawable.preferences.ctv.l (io.didomi.sdk.preferences.ctv.l)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/l;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/l;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->Y(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;)V

    return-void
.end method
