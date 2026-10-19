package com.gameloft.GLSocialLib.facebook;

import android.app.Activity;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.view.ViewGroup;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.applinks.AppLinkData;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.share.Sharer;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.GameRequestDialog;
import com.facebook.share.widget.ShareDialog;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;
import com.google.android.gms.drive.DriveFile;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FacebookAndroidGLSocialLib {
    private static final String K_GAPI_APPLICATION_FIELD = "application";
    private static final String K_GAPI_APP_REQUESTS = "me/apprequests";
    private static final String K_GAPI_CAN_POST_FIELD = "can_post";
    private static final String K_GAPI_CAPTION_FIELD = "caption";
    private static final String K_GAPI_CATEGORY_FIELD = "category";
    private static final String K_GAPI_COMMENTS_FIELD = "comments";
    private static final String K_GAPI_CONTENT_TYPE_FIELD = "contentType";
    private static final String K_GAPI_COVER_FIELD = "cover";
    private static final String K_GAPI_CREATED_TIME_FIELD = "created_time";
    private static final String K_GAPI_DATA_FIELD = "data";
    private static final String K_GAPI_DESCRIPTION_FIELD = "description";
    private static final String K_GAPI_FEED_PATH = "/feed";
    private static final String K_GAPI_FIELDS = "fields";
    private static final String K_GAPI_FIRST_NAME_FIELD = "first_name";
    private static final String K_GAPI_FRIENDS_PATH = "/friends";
    private static final String K_GAPI_FROM_FIELD = "from";
    private static final String K_GAPI_IDS_PATH = "?ids=";
    private static final String K_GAPI_ID_FIELD = "id";
    private static final String K_GAPI_LAST_NAME_FIELD = "last_name";
    private static final String K_GAPI_LIKES_FIELD = "likes";
    private static final String K_GAPI_LIKES_PATH = "/likes";
    private static final String K_GAPI_LIMIT_FIELD = "limit";
    private static final String K_GAPI_LINK_FIELD = "link";
    private static final String K_GAPI_MESSAGE_FIELD = "message";
    private static final String K_GAPI_ME_PATH = "me";
    private static final String K_GAPI_NAME_FIELD = "name";
    private static final String K_GAPI_OFFSET_FIELD = "offset";
    private static final String K_GAPI_PHOTOS_PATH = "/photos";
    private static final String K_GAPI_PICTURE_FIELD = "picture";
    private static final String K_GAPI_PRIVACY_FIELD = "privacy";
    private static final String K_GAPI_PUBLISH_TIME_FIELD = "publish_time";
    private static final String K_GAPI_TALKING_ABOUT_COUNT_FIELD = "talking_about_count";
    private static final String K_GAPI_TITLE_FIELD = "title";
    private static final String K_GAPI_VIDEOS_PATH = "/videos";
    private static final String K_GAPI_WEBSITE_FIELD = "website";
    private static final String K_USER_FRIENDS_PERMISSION = "user_friends";
    public static final int LIKE_REQUEST_CODE = 64209;
    public static final int LOGIN_REQUEST_CODE = 64206;
    public static final int REQUEST_REQUEST_CODE = 64210;
    public static final int SHARE_REQUEST_CODE = 64207;
    private static Context m_context;
    private static CallbackManager s_callbackManager;
    private static FacebookCallback<GameRequestDialog.Result> s_gameRequestCallback;
    private static FacebookAndroidGLSocialLib s_instance;
    private static FacebookCallback<LoginResult> s_loginCallback;
    private static GraphRequest.Callback s_requestCallback;
    private static FacebookCallback<Sharer.Result> s_shareCallback;
    private Activity m_activity;

    /* JADX INFO: renamed from: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$11, reason: invalid class name */
    static /* synthetic */ class AnonymousClass11 {
        static final /* synthetic */ int[] $SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION;

        static {
            int[] iArr = new int[GAPI_OPERATION.values().length];
            $SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION = iArr;
            try {
                iArr[GAPI_OPERATION.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION[GAPI_OPERATION.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION[GAPI_OPERATION.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private enum GAPI_OPERATION {
        GET,
        POST,
        DELETE
    }

    public FacebookAndroidGLSocialLib(Activity activity, Context context, ViewGroup viewGroup) {
        this.m_activity = null;
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: In constructor");
        this.m_activity = activity;
        m_context = context;
        s_instance = this;
    }

    public static boolean CanPresentShareDialog() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: CanPresentShareDialog");
        return new ShareDialog(s_instance.m_activity).canShow(new ShareLinkContent.Builder().build(), ShareDialog.Mode.NATIVE);
    }

    public static void DeleteGameRequest(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: DeleteGameRequest");
        StartGraphApiRequest(str, null, GAPI_OPERATION.DELETE);
    }

    private static void FetchDeferredAppLinkData() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: FetchDeferredAppLinkData");
        s_instance.m_activity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.3
            @Override // java.lang.Runnable
            public void run() {
                AppLinkData.fetchDeferredAppLinkData(FacebookAndroidGLSocialLib.s_instance.m_activity, new AppLinkData.CompletionHandler() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.3.1
                    @Override // com.facebook.applinks.AppLinkData.CompletionHandler
                    public void onDeferredAppLinkDataFetched(AppLinkData appLinkData) {
                        if (appLinkData == null) {
                            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: onDeferredAppLinkDataFetched no appLinkData");
                        } else {
                            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: onDeferredAppLinkDataFetched has appLinkData");
                            appLinkData.getTargetUri().toString();
                        }
                    }
                });
            }
        });
    }

    public static String GetAccessToken() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: GetAccessToken");
        return AccessToken.getCurrentAccessToken() != null ? AccessToken.getCurrentAccessToken().getToken() : new String("");
    }

    public static void GetGameRequests() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: GetUserGameRequests");
        StartGraphApiRequest(K_GAPI_APP_REQUESTS, null, GAPI_OPERATION.GET);
    }

    public static String GetUid() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: GetUid");
        return AccessToken.getCurrentAccessToken() == null ? "" : AccessToken.getCurrentAccessToken().getUserId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void HandleGraphApiResponse(GraphResponse graphResponse) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: HandleGraphApiResponse");
        if (graphResponse == null) {
            nativeOnFBFailWithError("FacebookAndroidGLSocialLib: GraphApi response is null");
            return;
        }
        FacebookRequestError error = graphResponse.getError();
        if (error == null) {
            JSONObject jSONObject = graphResponse.getJSONObject();
            if (jSONObject == null) {
                nativeOnFBFailWithError("FacebookAndroidGLSocialLib: GraphApi JSON object is null");
                return;
            } else {
                nativeOnFBDataLoad(jSONObject.toString());
                return;
            }
        }
        if (error.getErrorMessage() != null) {
            nativeOnFBFailWithError("FacebookAndroidGLSocialLib: " + error.getErrorMessage());
            return;
        }
        nativeOnFBFailWithError("FacebookAndroidGLSocialLib: " + error.getErrorUserMessage());
    }

    private static boolean HasDeclinedPermission(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: HasDeclinedPermission");
        Iterator<String> it = AccessToken.getCurrentAccessToken().getDeclinedPermissions().iterator();
        while (it.hasNext()) {
            if (str.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    private static boolean HasGrantedPermission(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: HasGrantedPermission");
        Iterator<String> it = AccessToken.getCurrentAccessToken().getPermissions().iterator();
        while (it.hasNext()) {
            if (str.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void HasPermission(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: HasPermission");
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (currentAccessToken == null) {
            nativeOnFBFailWithError("Active session null");
            return;
        }
        boolean zHasGrantedPermission = HasGrantedPermission(str);
        if (zHasGrantedPermission && !currentAccessToken.isDataAccessExpired()) {
            nativeOnFBDataLoad("approved");
            return;
        }
        if (zHasGrantedPermission) {
            nativeOnFBDataLoad("expired");
        } else if (HasDeclinedPermission(str)) {
            nativeOnFBDataLoad("declined");
        } else {
            nativeOnFBDataLoad("not asked");
        }
    }

    public static int HasPermissionInternal(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: HasPermissionInternal");
        if (AccessToken.getCurrentAccessToken() == null) {
            return -1;
        }
        if (HasGrantedPermission(str)) {
            return 1;
        }
        return HasDeclinedPermission(str) ? 0 : 2;
    }

    public static void Init() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: Init");
        FacebookSdk.setAutoInitEnabled(true);
        FetchDeferredAppLinkData();
        s_callbackManager = CallbackManager.Factory.create();
        FacebookSdk.setAutoLogAppEventsEnabled(true);
        FacebookSdk.fullyInitialize();
        if (AccessToken.getCurrentAccessToken() != null) {
            nativeOnFBDataLoad("Init Finished - Can do silent login");
        } else {
            nativeOnFBDataLoad("Init Finished - Can't do silent login");
        }
    }

    public static boolean IsLoggedIn() {
        return AccessToken.getCurrentAccessToken() != null;
    }

    public static void Login(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: Login");
        LoginInternal(Arrays.asList(str.split(",")));
    }

    private static void LoginInternal(final List<String> list) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: LoginInternal");
        s_instance.m_activity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.5
            @Override // java.lang.Runnable
            public void run() {
                FacebookAndroidGLSocialLib.RegisterLoginResponse();
                if (((UiModeManager) FacebookAndroidGLSocialLib.m_context.getSystemService("uimode")).getCurrentModeType() == 4) {
                    LoginManager.getInstance().setLoginBehavior(LoginBehavior.DEVICE_AUTH);
                }
                LoginManager.getInstance().logInWithReadPermissions(FacebookAndroidGLSocialLib.s_instance.m_activity, list);
            }
        });
    }

    public static void Logout() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: Logout");
        s_instance.m_activity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.1
            @Override // java.lang.Runnable
            public void run() {
                LoginManager.getInstance().logOut();
                FacebookAndroidGLSocialLib.nativeOnFBDataLoad("Logged out successfully");
            }
        });
    }

    public static void PostOpenGraphAction(String str, String str2, String str3, String str4) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: PostOpenGraphAction");
        String str5 = "me/" + (str + CertificateUtil.DELIMITER + str2);
        Bundle bundle = new Bundle();
        bundle.putString(str4, str3);
        StartGraphApiRequest(str5, bundle, GAPI_OPERATION.POST);
    }

    public static void PostPhotoToWallWithoutDialog(byte[] bArr, String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: PostPhotoToWallWithoutDialog");
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (bitmapDecodeByteArray == null) {
            ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: Bitmap is nil");
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("picture", bitmapDecodeByteArray);
        bundle.putString("message", str);
        StartGraphApiRequest("me/photos", bundle, GAPI_OPERATION.POST);
    }

    public static void PostToWall(String str, boolean z) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: PostToWall");
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: link: " + str);
        ShareLinkInternal(new ShareLinkContent.Builder().setContentUrl(Uri.parse(str)).build(), z ? ShareDialog.Mode.NATIVE : ShareDialog.Mode.AUTOMATIC);
    }

    public static void ReauthorizePermissions() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: ReauthorizePermissions");
        s_instance.m_activity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.2
            @Override // java.lang.Runnable
            public void run() {
                FacebookAndroidGLSocialLib.RegisterLoginResponse();
                LoginManager.getInstance().reauthorizeDataAccess(FacebookAndroidGLSocialLib.s_instance.m_activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void RegisterGameRequestResponse(GameRequestDialog gameRequestDialog) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RegisterGameRequestResponse");
        if (s_gameRequestCallback == null) {
            s_gameRequestCallback = new FacebookCallback<GameRequestDialog.Result>() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.8
                @Override // com.facebook.FacebookCallback
                public void onCancel() {
                    FacebookAndroidGLSocialLib.nativeOnFBDialogDidNotComplete();
                }

                @Override // com.facebook.FacebookCallback
                public void onError(FacebookException facebookException) {
                    FacebookAndroidGLSocialLib.nativeOnFBFailWithError("FacebookAndroidGLSocialLib: RegisterGameRequestResponse with error:" + facebookException.toString());
                }

                @Override // com.facebook.FacebookCallback
                public void onSuccess(GameRequestDialog.Result result) {
                    try {
                        List<String> requestRecipients = result.getRequestRecipients();
                        JSONArray jSONArray = new JSONArray();
                        Iterator<String> it = requestRecipients.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(it.next());
                        }
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("to", jSONArray);
                        FacebookAndroidGLSocialLib.nativeOnFBDataLoad(jSONObject.toString());
                    } catch (JSONException e2) {
                        FacebookAndroidGLSocialLib.nativeOnFBFailWithError("FacebookAndroidGLSocialLib: RegisterGameRequestResponse with error:" + e2.toString());
                    }
                }
            };
        }
        gameRequestDialog.registerCallback(s_callbackManager, s_gameRequestCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void RegisterLoginResponse() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RegisterLoginResponse");
        if (s_loginCallback == null) {
            s_loginCallback = new FacebookCallback<LoginResult>() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.4
                @Override // com.facebook.FacebookCallback
                public void onCancel() {
                    FacebookAndroidGLSocialLib.nativeOnFBDialogDidNotComplete();
                }

                @Override // com.facebook.FacebookCallback
                public void onError(FacebookException facebookException) {
                    FacebookAndroidGLSocialLib.nativeOnFBFailWithError("FacebookAndroidGLSocialLib: RegisterLoginResponse with error:" + facebookException.toString());
                }

                @Override // com.facebook.FacebookCallback
                public void onSuccess(LoginResult loginResult) {
                    FacebookAndroidGLSocialLib.nativeOnFBDialogDidComplete();
                }
            };
        }
        LoginManager.getInstance().registerCallback(s_callbackManager, s_loginCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void RegisterShareResponse(ShareDialog shareDialog) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RegisterShareResponse");
        if (s_shareCallback == null) {
            s_shareCallback = new FacebookCallback<Sharer.Result>() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.6
                @Override // com.facebook.FacebookCallback
                public void onCancel() {
                    FacebookAndroidGLSocialLib.nativeOnFBDialogDidNotComplete();
                }

                @Override // com.facebook.FacebookCallback
                public void onError(FacebookException facebookException) {
                    FacebookAndroidGLSocialLib.nativeOnFBFailWithError("FacebookAndroidGLSocialLib: RegisterShareResponse with error:" + facebookException.toString());
                }

                @Override // com.facebook.FacebookCallback
                public void onSuccess(Sharer.Result result) {
                    FacebookAndroidGLSocialLib.nativeOnFBDialogDidComplete();
                }
            };
        }
        shareDialog.registerCallback(s_callbackManager, s_shareCallback);
    }

    public static void RequestAppDetails() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestAppDetails");
        if (AccessToken.getCurrentAccessToken() == null) {
            nativeOnFBFailWithError("FacebookAndroidGLSocialLib: Access token invalid");
        } else {
            StartGraphApiRequest(AccessToken.getCurrentAccessToken().getApplicationId(), null, GAPI_OPERATION.GET);
        }
    }

    public static void RequestAppId() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestAppId");
        if (AccessToken.getCurrentAccessToken() == null) {
            nativeOnFBFailWithError("FacebookAndroidGLSocialLib: Access token invalid");
        } else {
            nativeOnFBDataLoad(AccessToken.getCurrentAccessToken().getApplicationId());
        }
    }

    public static void RequestCoverImage() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestCoverImage");
        Bundle bundle = new Bundle();
        bundle.putString("fields", K_GAPI_COVER_FIELD);
        StartGraphApiRequest("me", bundle, GAPI_OPERATION.GET);
    }

    public static void RequestFriendLikes(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestFriendLikes");
        String str2 = str + K_GAPI_LIKES_PATH;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "can_post,created_time,cover,description,id,link,name,talking_about_count,website,category");
        StartGraphApiRequest(str2, bundle, GAPI_OPERATION.GET);
    }

    public static void RequestFriendsData(int i, int i2, int i3) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestFriendsData(III)");
        String str = "id,name,first_name,last_name," + ("picture.type(square).height(" + Integer.toString(i3) + ").width(" + Integer.toString(i3) + ")");
        Bundle bundle = new Bundle();
        bundle.putString("fields", str);
        bundle.putString("offset", Integer.toString(i));
        bundle.putString(K_GAPI_LIMIT_FIELD, Integer.toString(i2));
        StartGraphApiRequest("me/friends", bundle, GAPI_OPERATION.GET);
    }

    public static void RequestFriendsData(String str, int i) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestFriendsData(SI)");
        String str2 = K_GAPI_IDS_PATH + str;
        String str3 = "id,name,first_name,last_name," + ("picture.type(square).height(" + Integer.toString(i) + ").width(" + Integer.toString(i) + ")");
        Bundle bundle = new Bundle();
        bundle.putString("fields", str3);
        StartGraphApiRequest(str2, bundle, GAPI_OPERATION.GET);
    }

    public static void RequestFriendsIDs(int i) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestFriendsIDs");
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString(K_GAPI_LIMIT_FIELD, Integer.toString(i));
        StartGraphApiRequest("me/friends", bundle, GAPI_OPERATION.GET);
    }

    public static void RequestFriendsName(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestFriendsName");
        String str2 = K_GAPI_IDS_PATH + str;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name");
        StartGraphApiRequest(str2, bundle, GAPI_OPERATION.GET);
    }

    public static void RequestName() {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestName");
        Bundle bundle = new Bundle();
        bundle.putString("fields", "name,first_name,last_name");
        StartGraphApiRequest("me", bundle, GAPI_OPERATION.GET);
    }

    public static void RequestPermissions(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestPermissions");
        LoginInternal(Arrays.asList(str.split(",")));
    }

    public static void RequestPicture(String str) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: RequestPicture");
        Bundle bundle = new Bundle();
        bundle.putString("fields", "picture.type(" + str + ")");
        StartGraphApiRequest("me", bundle, GAPI_OPERATION.GET);
    }

    public static void SendGameRequest(String str, String str2, String str3, String str4, String str5) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: SendGameRequest");
        GameRequestContent.Builder title = new GameRequestContent.Builder().setMessage(str2).setTitle(str3);
        if (str.isEmpty()) {
            title.setFilters(GameRequestContent.Filters.APP_NON_USERS);
        } else {
            title.setRecipients(Arrays.asList(str.split(",")));
        }
        if (!str4.isEmpty()) {
            title.setData(str4);
        }
        SendGameRequestInternal(title.build());
    }

    private static void SendGameRequestInternal(final GameRequestContent gameRequestContent) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: SendGameRequestInternal");
        s_instance.m_activity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.9
            @Override // java.lang.Runnable
            public void run() {
                GameRequestDialog gameRequestDialog = new GameRequestDialog(FacebookAndroidGLSocialLib.s_instance.m_activity);
                FacebookAndroidGLSocialLib.RegisterGameRequestResponse(gameRequestDialog);
                gameRequestDialog.show(gameRequestContent);
            }
        });
    }

    private static void ShareLinkInternal(final ShareContent shareContent, ShareDialog.Mode mode) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: ShareLinkInternal");
        s_instance.m_activity.runOnUiThread(new Runnable() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.7
            @Override // java.lang.Runnable
            public void run() {
                ShareDialog shareDialog = new ShareDialog(FacebookAndroidGLSocialLib.s_instance.m_activity);
                FacebookAndroidGLSocialLib.RegisterShareResponse(shareDialog);
                shareDialog.show(shareContent);
            }
        });
    }

    private static void StartGraphApiRequest(String str, Bundle bundle, GAPI_OPERATION gapi_operation) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: StartGraphApiRequest");
        if (s_requestCallback == null) {
            s_requestCallback = new GraphRequest.Callback() { // from class: com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.10
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: StartGraphApiRequest - onCompleted");
                    FacebookAndroidGLSocialLib.HandleGraphApiResponse(graphResponse);
                }
            };
        }
        int i = AnonymousClass11.$SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION[gapi_operation.ordinal()];
        GraphRequest graphRequestNewGraphPathRequest = i != 1 ? i != 2 ? i != 3 ? GraphRequest.newGraphPathRequest(AccessToken.getCurrentAccessToken(), str, s_requestCallback) : GraphRequest.newDeleteObjectRequest(AccessToken.getCurrentAccessToken(), str, s_requestCallback) : new GraphRequest(AccessToken.getCurrentAccessToken(), str, null, HttpMethod.POST, s_requestCallback) : GraphRequest.newGraphPathRequest(AccessToken.getCurrentAccessToken(), str, s_requestCallback);
        if (bundle != null) {
            graphRequestNewGraphPathRequest.setParameters(bundle);
        }
        graphRequestNewGraphPathRequest.executeAsync();
    }

    public static void UploadVideo(String str, String str2, String str3, String str4, String str5) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: UploadVideo");
        File file = new File(str);
        if (!file.exists()) {
            nativeOnFBFailWithError("File does not exist!");
            return;
        }
        if (str2.isEmpty()) {
            nativeOnFBFailWithError("Title must be defined!");
            return;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY);
            Bundle bundle = new Bundle();
            bundle.putParcelable(file.getName(), parcelFileDescriptorOpen);
            bundle.putString("title", str2);
            bundle.putString("description", str3);
            if (!str5.isEmpty()) {
                bundle.putString("privacy", str5);
            }
            if (!str4.isEmpty()) {
                bundle.putString(K_GAPI_CONTENT_TYPE_FIELD, str4);
            }
            StartGraphApiRequest(ShareConstants.MY_VIDEOS, bundle, GAPI_OPERATION.POST);
        } catch (FileNotFoundException unused) {
            nativeOnFBFailWithError("File not found!");
        }
    }

    public static native void nativeOnFBDataLoad(String str);

    public static native void nativeOnFBDialogDidComplete();

    public static native void nativeOnFBDialogDidNotComplete();

    public static native void nativeOnFBFailWithError(String str);

    public void onActivityResult(int i, int i2, Intent intent) {
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: onActivityResult");
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: requestCode " + i);
        ConsoleAndroidGLSocialLib.Log_Debug("FacebookAndroidGLSocialLib: resultCode " + i2);
        CallbackManager callbackManager = s_callbackManager;
        if (callbackManager != null) {
            callbackManager.onActivityResult(i, i2, intent);
        } else {
            ConsoleAndroidGLSocialLib.Log_Fatal_Error("FacebookAndroidGLSocialLib: CallbackManager is invalid and onActivityResult can't be handled");
        }
    }
}
