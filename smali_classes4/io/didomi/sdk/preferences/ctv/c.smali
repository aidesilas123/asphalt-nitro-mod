###### Class io.didomi.drawable.preferences.ctv.c (io.didomi.sdk.preferences.ctv.c)
.class public final synthetic Lio/didomi/sdk/preferences/ctv/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic a:Lio/didomi/sdk/preferences/ctv/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/preferences/ctv/c;

    invoke-direct {v0}, Lio/didomi/sdk/preferences/ctv/c;-><init>()V

    sput-object v0, Lio/didomi/sdk/preferences/ctv/c;->a:Lio/didomi/sdk/preferences/ctv/c;

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

    invoke-static {p1, p2, p3}, Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;->P(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
