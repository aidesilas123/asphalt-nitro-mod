###### Class io.didomi.drawable.preferences.ctv.h (io.didomi.sdk.preferences.ctv.h)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic a:Lio/didomi/sdk/preferences/ctv/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/preferences/ctv/h;

    invoke-direct {v0}, Lio/didomi/sdk/preferences/ctv/h;-><init>()V

    sput-object v0, Lio/didomi/sdk/preferences/ctv/h;->a:Lio/didomi/sdk/preferences/ctv/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->U(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
