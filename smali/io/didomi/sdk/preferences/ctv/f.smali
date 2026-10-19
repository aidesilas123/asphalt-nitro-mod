###### Class io.didomi.drawable.preferences.ctv.f (io.didomi.sdk.preferences.ctv.f)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/preferences/ctv/f;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/preferences/ctv/f;->a:Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->S(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V

    return-void
.end method
