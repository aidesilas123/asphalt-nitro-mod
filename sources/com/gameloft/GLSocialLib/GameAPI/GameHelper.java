package com.gameloft.GLSocialLib.GameAPI;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.request.GameRequest;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class GameHelper implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public static final int CLIENT_GAMES = 1;
    public static final int CLIENT_NONE = 0;
    static final int MAX_SIGN_IN_ATTEMPTS = 1;
    static final int RC_RESOLVE = 9001;
    static final int RC_UNUSED = 9002;
    static final String TAG = "GameHelper";
    Activity mActivity;
    Context mAppContext;
    Invitation mInvitation;
    ArrayList<GameRequest> mRequests;
    TurnBasedMatch mTurnBasedMatch;
    private boolean mSetupDone = false;
    private boolean mConnecting = false;
    public boolean mInstalling = false;
    boolean mExpectingResolution = false;
    boolean mSignInCancelled = false;
    GoogleApiClient.Builder mGoogleApiClientBuilder = null;
    Games.GamesOptions mGamesApiOptions = Games.GamesOptions.builder().build();
    GoogleApiClient mGoogleApiClient = null;
    int mRequestedClients = 0;
    boolean mConnectOnStart = true;
    boolean mUserInitiatedSignIn = false;
    ConnectionResult mConnectionResult = null;
    SignInFailureReason mSignInFailureReason = null;
    boolean mShowErrorDialogs = false;
    GameHelperListener mListener = null;
    private final String GAMEHELPER_SHARED_PREFS = "GAMEHELPER_SHARED_PREFS";
    private final String KEY_SIGN_IN_CANCELLATIONS = "KEY_SIGN_IN_CANCELLATIONS";
    Handler mHandler = new Handler();

    public interface GameHelperListener {
        void onSignInFailed();

        void onSignInSucceeded();
    }

    public static class SignInFailureReason {
        public static final int NO_ACTIVITY_RESULT_CODE = -100;
        int mActivityResultCode;
        int mServiceErrorCode;

        public SignInFailureReason(int i) {
            this(i, -100);
        }

        public SignInFailureReason(int i, int i2) {
            this.mServiceErrorCode = 0;
            this.mActivityResultCode = -100;
            this.mServiceErrorCode = i;
            this.mActivityResultCode = i2;
        }

        public int getActivityResultCode() {
            return this.mActivityResultCode;
        }

        public int getServiceErrorCode() {
            return this.mServiceErrorCode;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("SignInFailureReason(serviceErrorCode:");
            sb.append(GameHelperUtils.errorCodeToString(this.mServiceErrorCode));
            String str = ")";
            if (this.mActivityResultCode != -100) {
                str = ",activityResultCode:" + GameHelperUtils.activityResponseCodeToString(this.mActivityResultCode) + ")";
            }
            sb.append(str);
            return sb.toString();
        }
    }

    public GameHelper(Activity activity) {
        this.mActivity = null;
        this.mAppContext = null;
        this.mActivity = activity;
        this.mAppContext = activity.getApplicationContext();
    }

    private void doApiOptionsPreCheck() {
        if (this.mGoogleApiClientBuilder == null) {
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup().");
        throw new IllegalStateException("GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup().");
    }

    static Dialog makeSimpleDialog(Activity activity, String str) {
        return new AlertDialog.Builder(activity).setMessage(str).setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null).create();
    }

    static Dialog makeSimpleDialog(Activity activity, String str, String str2) {
        return new AlertDialog.Builder(activity).setMessage(str2).setTitle(str).setNeutralButton(R.string.ok, (DialogInterface.OnClickListener) null).create();
    }

    public static void showFailureDialog(Activity activity, int i, int i2) {
        Dialog dialogMakeSimpleDialog;
        if (activity == null) {
            ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: *** No Activity. Can't show failure dialog!");
            return;
        }
        switch (i) {
            case 10002:
                dialogMakeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, 1));
                break;
            case 10003:
                dialogMakeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, 3));
                break;
            case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED /* 10004 */:
                dialogMakeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, 2));
                break;
            default:
                Dialog errorDialog = GooglePlayServicesUtil.getErrorDialog(i2, activity, 1006, null);
                if (errorDialog != null) {
                    dialogMakeSimpleDialog = errorDialog;
                } else {
                    ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: No standard error dialog available. Making fallback dialog.");
                    dialogMakeSimpleDialog = makeSimpleDialog(activity, GameHelperUtils.getString(activity, 0) + " " + GameHelperUtils.errorCodeToString(i2));
                }
                break;
        }
        dialogMakeSimpleDialog.show();
    }

    public boolean HasClient(int i) {
        return (i & this.mRequestedClients) != 0;
    }

    public boolean IsSignInCancelled() {
        return this.mSignInCancelled;
    }

    public void addClient(int i) {
        this.mRequestedClients = i | this.mRequestedClients;
    }

    void assertConfigured(String str) {
        if (this.mSetupDone) {
            return;
        }
        String str2 = "GameHelper error: Operation attempted without setup: " + str + ". The setup() method must be called before attempting any other operation.";
        ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: " + str2);
        throw new IllegalStateException(str2);
    }

    public void beginUserInitiatedSignIn() {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: beginUserInitiatedSignIn: resetting attempt count.");
        this.mSignInCancelled = false;
        int iIsGooglePlayServicesAvailable = isGooglePlayServicesAvailable();
        if (iIsGooglePlayServicesAvailable != 0) {
            ConsoleAndroidGLSocialLib.Log_Debug("Google: Google Play services not available. Show error dialog.");
            this.mInstalling = true;
            Activity activity = this.mActivity;
            if (activity == null) {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Google: No Activity. Can't show failure dialog!");
                return;
            } else {
                GooglePlayServicesUtil.getErrorDialog(iIsGooglePlayServicesAvailable, activity, 9002, null).show();
                this.mConnectionResult = null;
                return;
            }
        }
        this.mConnectOnStart = true;
        if (this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success.");
            notifyListener(true);
            return;
        }
        if (this.mConnecting) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it's clicked, and re-enable when you get the callback.");
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Starting USER-INITIATED sign-in flow.");
        this.mUserInitiatedSignIn = true;
        if (this.mConnectionResult != null) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: beginUserInitiatedSignIn: continuing pending sign-in flow.");
            this.mConnecting = true;
            resolveConnectionResult();
        } else {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: beginUserInitiatedSignIn: starting new sign-in flow.");
            this.mConnecting = true;
            connect();
        }
    }

    public void clearInvitation() {
        this.mInvitation = null;
    }

    public void clearRequests() {
        this.mRequests = null;
    }

    public void clearTurnBasedMatch() {
        this.mTurnBasedMatch = null;
    }

    void connect() {
        if (this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Already connected.");
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Starting connection.");
        this.mConnecting = true;
        this.mInvitation = null;
        this.mTurnBasedMatch = null;
        this.mGoogleApiClient.connect();
    }

    public GoogleApiClient.Builder createApiClientBuilder() {
        if (this.mSetupDone) {
            ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup.");
            throw new IllegalStateException("GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup.");
        }
        GoogleApiClient.Builder builder = new GoogleApiClient.Builder(this.mActivity, this, this);
        if (HasClient(1)) {
            builder.addApi(Games.API, this.mGamesApiOptions);
            builder.addScope(Games.SCOPE_GAMES);
        }
        this.mGoogleApiClientBuilder = builder;
        return builder;
    }

    public void disconnect() {
        if (!this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: disconnect() called when client was already disconnected.");
        } else {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Disconnecting client.");
            this.mGoogleApiClient.disconnect();
        }
    }

    public GoogleApiClient getApiClient() {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient != null) {
            return googleApiClient;
        }
        throw new IllegalStateException("No GoogleApiClient. Did you call setup()?");
    }

    public Invitation getInvitation() {
        if (!this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mInvitation;
    }

    public String getInvitationId() {
        if (!this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        Invitation invitation = this.mInvitation;
        if (invitation == null) {
            return null;
        }
        return invitation.getInvitationId();
    }

    public ArrayList<GameRequest> getRequests() {
        if (!this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mRequests;
    }

    int getSignInAttempts() {
        return this.mAppContext.getSharedPreferences("GAMEHELPER_SHARED_PREFS", 0).getInt("KEY_SIGN_IN_CANCELLATIONS", 0);
    }

    public SignInFailureReason getSignInError() {
        return this.mSignInFailureReason;
    }

    public TurnBasedMatch getTurnBasedMatch() {
        if (!this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()");
        }
        return this.mTurnBasedMatch;
    }

    void giveUp(SignInFailureReason signInFailureReason) {
        this.mConnectOnStart = false;
        disconnect();
        this.mSignInFailureReason = signInFailureReason;
        if (signInFailureReason.mActivityResultCode == 10004) {
            GameHelperUtils.printMisconfiguredDebugInfo(this.mAppContext);
        }
        if (signInFailureReason.getServiceErrorCode() != 30) {
            showFailureDialog();
        }
        this.mConnecting = false;
        notifyListener(false);
    }

    public boolean hasInvitation() {
        return this.mInvitation != null;
    }

    public boolean hasRequests() {
        return this.mRequests != null;
    }

    public boolean hasSignInError() {
        return this.mSignInFailureReason != null;
    }

    public boolean hasTurnBasedMatch() {
        return this.mTurnBasedMatch != null;
    }

    public boolean isConnecting() {
        return this.mConnecting;
    }

    public int isGooglePlayServicesAvailable() {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mAppContext);
        ConsoleAndroidGLSocialLib.Log_Debug("Google: isGooglePlayServicesAvailable returned " + iIsGooglePlayServicesAvailable);
        return iIsGooglePlayServicesAvailable;
    }

    public boolean isSignedIn() {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        return googleApiClient != null && googleApiClient.isConnected();
    }

    public Dialog makeSimpleDialog(String str) {
        Activity activity = this.mActivity;
        if (activity != null) {
            return makeSimpleDialog(activity, str);
        }
        ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: *** makeSimpleDialog failed: no current Activity!");
        return null;
    }

    public Dialog makeSimpleDialog(String str, String str2) {
        Activity activity = this.mActivity;
        if (activity != null) {
            return makeSimpleDialog(activity, str, str2);
        }
        ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: *** makeSimpleDialog failed: no current Activity!");
        return null;
    }

    int markSignInAttempts() {
        SharedPreferences.Editor editorEdit = this.mAppContext.getSharedPreferences("GAMEHELPER_SHARED_PREFS", 0).edit();
        editorEdit.putInt("KEY_SIGN_IN_CANCELLATIONS", 1);
        editorEdit.commit();
        return 1;
    }

    void notifyListener(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("GameHelper: Notifying LISTENER of sign-in ");
        sb.append(z ? "SUCCESS" : this.mSignInFailureReason != null ? "FAILURE (error)" : "FAILURE (no error)");
        ConsoleAndroidGLSocialLib.Log_Debug(sb.toString());
        GameHelperListener gameHelperListener = this.mListener;
        if (gameHelperListener != null) {
            if (z) {
                gameHelperListener.onSignInSucceeded();
            } else {
                gameHelperListener.onSignInFailed();
            }
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append("GameHelper: onActivityResult: req=");
        sb.append(i == 9001 ? "RC_RESOLVE" : String.valueOf(i));
        sb.append(", resp=");
        sb.append(GameHelperUtils.activityResponseCodeToString(i2));
        ConsoleAndroidGLSocialLib.Log_Debug(sb.toString());
        if (i != 9001) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onActivityResult: request code not meant for us. Ignoring.");
            return;
        }
        this.mExpectingResolution = false;
        if (!this.mConnecting) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onActivityResult: ignoring because we are not connecting.");
            return;
        }
        if (i2 == -1) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onAR: Resolution was RESULT_OK, so connecting current client again.");
            connect();
            return;
        }
        if (i2 == 10001) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onAR: Resolution was RECONNECT_REQUIRED, so reconnecting.");
            connect();
            return;
        }
        if (i2 != 0) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onAR: responseCode=" + GameHelperUtils.activityResponseCodeToString(i2) + ", so giving up.");
            giveUp(new SignInFailureReason(this.mConnectionResult.getErrorCode(), i2));
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onAR: Got a cancellation result, so disconnecting.");
        this.mSignInCancelled = true;
        this.mConnectOnStart = false;
        this.mUserInitiatedSignIn = false;
        this.mSignInFailureReason = null;
        this.mConnecting = false;
        this.mGoogleApiClient.disconnect();
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onAR: # of cancellations " + getSignInAttempts() + " --> " + markSignInAttempts() + ", max 1");
        notifyListener(false);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnected: connected!");
        if (bundle != null) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnected: connection hint provided. Checking for invite.");
            Invitation invitation = (Invitation) bundle.getParcelable(Multiplayer.EXTRA_INVITATION);
            if (invitation != null && invitation.getInvitationId() != null) {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnected: connection hint has a room invite!");
                this.mInvitation = invitation;
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Invitation ID: " + this.mInvitation.getInvitationId());
            }
            ArrayList<GameRequest> gameRequestsFromBundle = Games.Requests.getGameRequestsFromBundle(bundle);
            this.mRequests = gameRequestsFromBundle;
            if (!gameRequestsFromBundle.isEmpty()) {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnected: connection hint has " + this.mRequests.size() + " request(s)");
            }
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnected: connection hint provided. Checking for TBMP game.");
            this.mTurnBasedMatch = (TurnBasedMatch) bundle.getParcelable(Multiplayer.EXTRA_TURN_BASED_MATCH);
        }
        if (HasClient(1)) {
            succeedSignIn();
        } else {
            giveUp(new SignInFailureReason(30));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed");
        this.mConnectionResult = connectionResult;
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Connection failure:");
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper:    - code: " + GameHelperUtils.errorCodeToString(this.mConnectionResult.getErrorCode()));
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper:    - resolvable: " + this.mConnectionResult.hasResolution());
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper:    - details: " + this.mConnectionResult.toString());
        int signInAttempts = getSignInAttempts();
        boolean z = true;
        if (this.mUserInitiatedSignIn) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed: WILL resolve because user initiated sign-in.");
        } else {
            if (this.mSignInCancelled) {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed WILL NOT resolve (user already cancelled once).");
            } else if (signInAttempts < 1) {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed: WILL resolve because we have below the max# of attempts, " + signInAttempts + " < 1");
            } else {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: " + signInAttempts + " >= 1");
            }
            z = false;
        }
        if (z) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed: resolving problem...");
            resolveConnectionResult();
        } else {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionFailed: since we won't resolve, failing now.");
            this.mConnectionResult = connectionResult;
            this.mConnecting = false;
            notifyListener(false);
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onConnectionSuspended, cause=" + i);
        disconnect();
        this.mSignInFailureReason = null;
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Making extraordinary call to onSignInFailed callback");
        this.mConnecting = false;
        notifyListener(false);
    }

    public void onStart(Activity activity, boolean z) {
        this.mActivity = activity;
        this.mAppContext = activity.getApplicationContext();
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onStart");
        assertConfigured("onStart");
        if (!this.mConnectOnStart || z) {
            if (z) {
                ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Not attempting to connect becase deferAutoLogIn=true");
                return;
            }
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Not attempting to connect becase mConnectOnStart=false");
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Instead, reporting a sign-in failure.");
            this.mHandler.postDelayed(new Runnable() { // from class: com.gameloft.GLSocialLib.GameAPI.GameHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    GameHelper.this.notifyListener(false);
                }
            }, 1000L);
            return;
        }
        if (this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: GameHelper: client was already connected on onStart()");
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Connecting client.");
        this.mConnecting = true;
        this.mGoogleApiClient.connect();
    }

    public void onStop() {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: onStop");
        assertConfigured("onStop");
        if (this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Disconnecting client due to onStop");
            this.mGoogleApiClient.disconnect();
        } else {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Client already disconnected when we got onStop.");
        }
        this.mConnecting = false;
        this.mExpectingResolution = false;
        this.mActivity = null;
    }

    public void reconnectClient() {
        if (this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Reconnecting client.");
            this.mGoogleApiClient.reconnect();
        } else {
            ConsoleAndroidGLSocialLib.Log_Minor_Error("!!! GameHelper WARNING: reconnectClient() called when client is not connected.");
            connect();
        }
    }

    public void removeClient(int i) {
        if (HasClient(i)) {
            this.mRequestedClients = (~i) & this.mRequestedClients;
        }
    }

    void resetSignInAttempts() {
        SharedPreferences.Editor editorEdit = this.mAppContext.getSharedPreferences("GAMEHELPER_SHARED_PREFS", 0).edit();
        editorEdit.putInt("KEY_SIGN_IN_CANCELLATIONS", 0);
        editorEdit.commit();
    }

    void resolveConnectionResult() {
        if (this.mExpectingResolution) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: We're already expecting the result of a previous resolution.");
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: resolveConnectionResult: trying to resolve result: " + this.mConnectionResult);
        if (!this.mConnectionResult.hasResolution()) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: resolveConnectionResult: result has no resolution. Giving up.");
            giveUp(new SignInFailureReason(this.mConnectionResult.getErrorCode()));
            return;
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Result has resolution. Starting it.");
        try {
            this.mExpectingResolution = true;
            this.mConnectionResult.startResolutionForResult(this.mActivity, 9001);
        } catch (IntentSender.SendIntentException unused) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: SendIntentException, so connecting again.");
            connect();
        }
    }

    public void setConnectOnStart(boolean z) {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Forcing mConnectOnStart=" + z);
        this.mConnectOnStart = z;
    }

    public void setGamesApiOptions(Games.GamesOptions gamesOptions) {
        doApiOptionsPreCheck();
        this.mGamesApiOptions = gamesOptions;
    }

    public void setShowErrorDialogs(boolean z) {
        this.mShowErrorDialogs = z;
    }

    public void setup(GameHelperListener gameHelperListener, int i) {
        if (this.mSetupDone) {
            ConsoleAndroidGLSocialLib.Log_Major_Error("*** GameHelper ERROR: GameHelper: you cannot call GameHelper.setup() more than once!");
            throw new IllegalStateException("GameHelper: you cannot call GameHelper.setup() more than once!");
        }
        this.mListener = gameHelperListener;
        this.mRequestedClients = i;
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Setup: requested clients: " + this.mRequestedClients);
        if (this.mGoogleApiClientBuilder == null) {
            createApiClientBuilder();
        }
        this.mGoogleApiClient = this.mGoogleApiClientBuilder.build();
        this.mGoogleApiClientBuilder = null;
        this.mSetupDone = true;
    }

    public void showFailureDialog() {
        SignInFailureReason signInFailureReason = this.mSignInFailureReason;
        if (signInFailureReason != null) {
            int serviceErrorCode = signInFailureReason.getServiceErrorCode();
            int activityResultCode = this.mSignInFailureReason.getActivityResultCode();
            if (this.mShowErrorDialogs) {
                showFailureDialog(this.mActivity, activityResultCode, serviceErrorCode);
                return;
            }
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Not showing error dialog because mShowErrorDialogs==false. Error was: " + this.mSignInFailureReason);
        }
    }

    public void signOut() {
        if (!this.mGoogleApiClient.isConnected()) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: signOut: was already disconnected, ignoring.");
            return;
        }
        if (HasClient(1)) {
            ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Signing out from the Google API Client.");
            try {
                Games.signOut(this.mGoogleApiClient);
            } catch (Exception e2) {
                ConsoleAndroidGLSocialLib.Log_Debug("Sign out on Games Exception: " + e2.toString());
            }
        }
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: Disconnecting client.");
        this.mConnectOnStart = false;
        this.mConnecting = false;
        this.mGoogleApiClient.disconnect();
    }

    void succeedSignIn() {
        ConsoleAndroidGLSocialLib.Log_Debug("GameHelper: succeedSignIn");
        this.mSignInFailureReason = null;
        this.mConnectOnStart = true;
        this.mUserInitiatedSignIn = false;
        this.mConnecting = false;
        markSignInAttempts();
        notifyListener(true);
    }
}
