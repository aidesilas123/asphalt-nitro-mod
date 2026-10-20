###### Class io.didomi.drawable.preferences.ctv.g (io.didomi.sdk.preferences.ctv.g)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/g;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/g;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0, p1, p2}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->T(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;Landroid/view/View;Z)V

    return-void
.end method
