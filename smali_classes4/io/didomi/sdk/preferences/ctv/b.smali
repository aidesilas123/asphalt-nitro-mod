###### Class io.didomi.drawable.preferences.ctv.b (io.didomi.sdk.preferences.ctv.b)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/b;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->O(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    return-void
.end method
