###### Class com.gameloft.GLSocialLib.GameAPI.GameHelper (com.gameloft.GLSocialLib.GameAPI.GameHelper)
.class public Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;,
        Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;
    }
.end annotation


# static fields
.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field static final MAX_SIGN_IN_ATTEMPTS:I = 0x1

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field public mInstalling:Z

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field mListener:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSetupDone:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInstalling:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mExpectingResolution:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInCancelled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mUserInitiatedSignIn:Z

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mShowErrorDialogs:Z

    iput-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mListener:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;

    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doApiOptionsPreCheck()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .registers 4

    if-nez p0, :cond_8

    const-string p0, "*** GameHelper ERROR: *** No Activity. Can\'t show failure dialog!"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    return-void

    :cond_8
    packed-switch p1, :pswitch_data_5e

    const/16 p1, 0x3ee

    const/4 v0, 0x0

    invoke-static {p2, p0, p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_59

    const-string p1, "*** GameHelper ERROR: No standard error dialog available. Making fallback dialog."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_5a

    :pswitch_3b
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_5a

    :pswitch_45
    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_5a

    :pswitch_4f
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_5a

    :cond_59
    move-object p0, p1

    :goto_5a
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_data_5e
    .packed-switch 0x2712
        :pswitch_4f
        :pswitch_45
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public HasClient(I)Z
    .registers 3

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public IsSignInCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInCancelled:Z

    return v0
.end method

.method public addClient(I)V
    .registers 3

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    return-void
.end method

.method assertConfigured(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** GameHelper ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginUserInitiatedSignIn()V
    .registers 5

    const-string v0, "GameHelper: beginUserInitiatedSignIn: resetting attempt count."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInCancelled:Z

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->isGooglePlayServicesAvailable()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    const-string v2, "Google: Google Play services not available. Show error dialog."

    invoke-static {v2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInstalling:Z

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_20

    const-string v0, "GameHelper: Google: No Activity. Can\'t show failure dialog!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void

    :cond_20
    const/16 v2, 0x232a

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_2d
    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "!!! GameHelper WARNING: beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void

    :cond_40
    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_4a

    const-string v0, "!!! GameHelper WARNING: beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    return-void

    :cond_4a
    const-string v0, "GameHelper: Starting USER-INITIATED sign-in flow."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mUserInitiatedSignIn:Z

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_60

    const-string v0, "GameHelper: beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->resolveConnectionResult()V

    goto :goto_6a

    :cond_60
    const-string v0, "GameHelper: beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->connect()V

    :goto_6a
    return-void
.end method

.method public clearInvitation()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-void
.end method

.method public clearRequests()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-void
.end method

.method public clearTurnBasedMatch()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-void
.end method

.method connect()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "GameHelper: Already connected."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v0, "GameHelper: Starting connection."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSetupDone:Z

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->HasClient(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_1e
    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object v0

    :cond_21
    const-string v0, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "GameHelper: Disconnecting client."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_18

    :cond_13
    const-string v0, "!!! GameHelper WARNING: disconnect() called when client was already disconnected."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleApiClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "!!! GameHelper WARNING: Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "!!! GameHelper WARNING: Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_17

    :cond_13
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "!!! GameHelper WARNING: Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInAttempts()I
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSignInError()Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "!!! GameHelper WARNING: Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->disconnect()V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    iget v1, p1, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v2, 0x2714

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    :cond_13
    invoke-virtual {p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result p1

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_1e

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->showFailureDialog()V

    :cond_1e
    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    invoke-virtual {p0, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void
.end method

.method public hasInvitation()Z
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasRequests()Z
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasSignInError()Z
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasTurnBasedMatch()Z
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isConnecting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isGooglePlayServicesAvailable()I
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google: isGooglePlayServicesAvailable returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return v0
.end method

.method public isSignedIn()Z
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_b

    const-string p1, "*** GameHelper ERROR: *** makeSimpleDialog failed: no current Activity!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_b
    invoke-static {v0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_b

    const-string p1, "*** GameHelper ERROR: *** makeSimpleDialog failed: no current Activity!"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_b
    invoke-static {v0, p1, p2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method markSignInAttempts()I
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2
.end method

.method notifyListener(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "SUCCESS"

    goto :goto_18

    :cond_f
    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    if-eqz v1, :cond_16

    const-string v1, "FAILURE (error)"

    goto :goto_18

    :cond_16
    const-string v1, "FAILURE (no error)"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mListener:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2c

    invoke-interface {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;->onSignInSucceeded()V

    goto :goto_2f

    :cond_2c
    invoke-interface {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;->onSignInFailed()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GameHelper: onActivityResult: req="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_11

    const-string v1, "RC_RESOLVE"

    goto :goto_15

    :cond_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resp="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    if-eq p1, v0, :cond_33

    const-string p1, "GameHelper: onActivityResult: request code not meant for us. Ignoring."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void

    :cond_33
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mExpectingResolution:Z

    iget-boolean p3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    if-nez p3, :cond_40

    const-string p1, "GameHelper: onActivityResult: ignoring because we are not connecting."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void

    :cond_40
    const/4 p3, -0x1

    if-ne p2, p3, :cond_4d

    const-string p1, "GameHelper: onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->connect()V

    goto/16 :goto_cd

    :cond_4d
    const/16 p3, 0x2711

    if-ne p2, p3, :cond_5a

    const-string p1, "GameHelper: onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->connect()V

    goto :goto_cd

    :cond_5a
    if-nez p2, :cond_a2

    const-string p2, "GameHelper: onAR: Got a cancellation result, so disconnecting."

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInCancelled:Z

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mUserInitiatedSignIn:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    iget-object p3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getSignInAttempts()I

    move-result p3

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->markSignInAttempts()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper: onAR: # of cancellations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " --> "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", max "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    goto :goto_cd

    :cond_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GameHelper: onAR: responseCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", so giving up."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance p1, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    iget-object p3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p3

    invoke-direct {p1, p3, p2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->giveUp(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;)V

    :goto_cd
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "GameHelper: onConnected: connected!"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    if-eqz p1, :cond_79

    const-string v0, "GameHelper: onConnected: connection hint provided. Checking for invite."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string v0, "invitation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v1, "GameHelper: onConnected: connection hint has a room invite!"

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: Invitation ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :cond_3d
    sget-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: onConnected: connection hint has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " request(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :cond_6a
    const-string v0, "GameHelper: onConnected: connection hint provided. Checking for TBMP game."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string v0, "turn_based_match"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    :cond_79
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->HasClient(I)Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->succeedSignIn()V

    goto :goto_8e

    :cond_84
    new-instance p1, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->giveUp(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;)V

    :goto_8e
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7

    const-string v0, "GameHelper: onConnectionFailed"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    const-string v0, "GameHelper: Connection failure:"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper:    - code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper:    - resolvable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper:    - details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->getSignInAttempts()I

    move-result v0

    iget-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mUserInitiatedSignIn:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6e

    const-string v0, "GameHelper: onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    goto :goto_b5

    :cond_6e
    iget-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInCancelled:Z

    if-eqz v1, :cond_79

    const-string v0, "GameHelper: onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :goto_77
    const/4 v3, 0x0

    goto :goto_b5

    :cond_79
    if-ge v0, v3, :cond_98

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameHelper: onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    goto :goto_b5

    :cond_98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameHelper: onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    goto :goto_77

    :goto_b5
    if-nez v3, :cond_c4

    const-string v0, "GameHelper: onConnectionFailed: since we won\'t resolve, failing now."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    invoke-virtual {p0, v2}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void

    :cond_c4
    const-string p1, "GameHelper: onConnectionFailed: resolving problem..."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->resolveConnectionResult()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: onConnectionSuspended, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->disconnect()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    const-string p1, "GameHelper: Making extraordinary call to onSignInFailed callback"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;Z)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    const-string p1, "GameHelper: onStart"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string p1, "onStart"

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->assertConfigured(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    if-eqz p1, :cond_34

    if-nez p2, :cond_34

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "!!! GameHelper WARNING: GameHelper: client was already connected on onStart()"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    goto :goto_52

    :cond_26
    const-string p1, "GameHelper: Connecting client."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_52

    :cond_34
    if-eqz p2, :cond_3c

    const-string p1, "GameHelper: Not attempting to connect becase deferAutoLogIn=true"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    goto :goto_52

    :cond_3c
    const-string p1, "GameHelper: Not attempting to connect becase mConnectOnStart=false"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string p1, "GameHelper: Instead, reporting a sign-in failure."

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;

    invoke-direct {p2, p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;-><init>(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_52
    return-void
.end method

.method public onStop()V
    .registers 2

    const-string v0, "GameHelper: onStop"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->assertConfigured(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "GameHelper: Disconnecting client due to onStop"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_22

    :cond_1d
    const-string v0, "GameHelper: Client already disconnected when we got onStop."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :goto_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mExpectingResolution:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public reconnectClient()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "!!! GameHelper WARNING: reconnectClient() called when client is not connected."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Minor_Error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->connect()V

    goto :goto_1b

    :cond_11
    const-string v0, "GameHelper: Reconnecting client."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    :goto_1b
    return-void
.end method

.method public removeClient(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->HasClient(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    :cond_c
    return-void
.end method

.method resetSignInAttempts()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method resolveConnectionResult()V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mExpectingResolution:Z

    if-eqz v0, :cond_a

    const-string v0, "GameHelper: We\'re already expecting the result of a previous resolution."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "GameHelper: Result has resolution. Starting it."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_2e
    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mExpectingResolution:Z

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_39
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_56

    :catch_3a
    const-string v0, "GameHelper: SendIntentException, so connecting again."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->connect()V

    goto :goto_56

    :cond_43
    const-string v0, "GameHelper: resolveConnectionResult: result has no resolution. Giving up."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->giveUp(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;)V

    :goto_56
    return-void
.end method

.method public setConnectOnStart(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: Forcing mConnectOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .registers 2

    invoke-direct {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->doApiOptionsPreCheck()V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mShowErrorDialogs:Z

    return-void
.end method

.method public setup(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSetupDone:Z

    if-nez v0, :cond_34

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mListener:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;

    iput p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GameHelper: Setup: requested clients: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mRequestedClients:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez p1, :cond_25

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_25
    iget-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSetupDone:Z

    return-void

    :cond_34
    const-string p1, "GameHelper: you cannot call GameHelper.setup() more than once!"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "*** GameHelper ERROR: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Major_Error(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public showFailureDialog()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    invoke-virtual {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    goto :goto_2e

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper: Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public signOut()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "GameHelper: signOut: was already disconnected, ignoring."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->HasClient(I)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "GameHelper: Signing out from the Google API Client."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :try_start_1a
    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sign out on Games Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :cond_39
    :goto_39
    const-string v0, "GameHelper: Disconnecting client."

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method

.method succeedSignIn()V
    .registers 3

    const-string v0, "GameHelper: succeedSignIn"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mSignInFailureReason:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnectOnStart:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mUserInitiatedSignIn:Z

    iput-boolean v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->mConnecting:Z

    invoke-virtual {p0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->markSignInAttempts()I

    invoke-virtual {p0, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameHelper.AnonymousClass1 (com.gameloft.GLSocialLib.GameAPI.GameHelper$1)
.class Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->onStart(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$1;->this$0:Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;->notifyListener(Z)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameHelper.GameHelperListener (com.gameloft.GLSocialLib.GameAPI.GameHelper$GameHelperListener)
.class public interface abstract Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$GameHelperListener;
.super Ljava/lang/Object;
.source "GameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameHelperListener"
.end annotation


# virtual methods
.method public abstract onSignInFailed()V
.end method

.method public abstract onSignInSucceeded()V
.end method

###### Class com.gameloft.GLSocialLib.GameAPI.GameHelper.SignInFailureReason (com.gameloft.GLSocialLib.GameAPI.GameHelper$SignInFailureReason)
.class public Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;
.super Ljava/lang/Object;
.source "GameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/GLSocialLib/GameAPI/GameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignInFailureReason"
.end annotation


# static fields
.field public static final NO_ACTIVITY_RESULT_CODE:I = -0x64


# instance fields
.field mActivityResultCode:I

.field mServiceErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/16 v0, -0x64

    invoke-direct {p0, p1, v0}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    const/16 v0, -0x64

    iput v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    iput p1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    iput p2, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    return-void
.end method


# virtual methods
.method public getActivityResultCode()I
    .registers 2

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    return v0
.end method

.method public getServiceErrorCode()I
    .registers 2

    iget v0, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignInFailureReason(serviceErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mServiceErrorCode:I

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const-string v2, ")"

    const/16 v3, -0x64

    if-ne v1, v3, :cond_1c

    goto :goto_36

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityResultCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/gameloft/GLSocialLib/GameAPI/GameHelper$SignInFailureReason;->mActivityResultCode:I

    invoke-static {v3}, Lcom/gameloft/GLSocialLib/GameAPI/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
