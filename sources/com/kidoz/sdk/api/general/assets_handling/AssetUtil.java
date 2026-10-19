package com.kidoz.sdk.api.general.assets_handling;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.kidoz.sdk.api.general.database.ServerConfigStorage;
import com.kidoz.sdk.api.general.utils.PropertiesObj;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.SdkDeviceUtils;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.server_connect.BaseConnectionClient;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AssetUtil {
    private static final String BANNER_ASSETS = "banner";
    private static final String GLOBAL_STYLE_PARAMS = "globalStyleParams";
    private static final String INTERSTITIAL_ASSETS = "interstitial";
    private static final String PANEL_FAMILY_ASSETS = "panelFamily";
    private static final String TAG = "AssetUtil";

    public static class ParserAsyncTask extends AsyncTask<Void, Void, Boolean> {
        private Context mContext;
        private IOnStyleParseListener mStyleParseListener;

        public interface IOnStyleParseListener {
            void onParseFinished(boolean z);
        }

        public ParserAsyncTask(Context context, IOnStyleParseListener iOnStyleParseListener) {
            this.mContext = context;
            this.mStyleParseListener = iOnStyleParseListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            boolean assets;
            PropertiesObj propertiesObjLoadAppProperties = ServerConfigStorage.getInstance().loadAppProperties();
            if (propertiesObjLoadAppProperties != null) {
                assets = AssetUtil.parseAssets(this.mContext, propertiesObjLoadAppProperties.getGlobalPropertiesStyle());
                AssetUtil.parseAssets(this.mContext, propertiesObjLoadAppProperties.getInterstitialViewStyle());
                AssetUtil.parseAssets(this.mContext, propertiesObjLoadAppProperties.getBannerViewStyle());
            } else {
                assets = false;
            }
            return Boolean.valueOf(assets);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            IOnStyleParseListener iOnStyleParseListener = this.mStyleParseListener;
            if (iOnStyleParseListener != null) {
                iOnStyleParseListener.onParseFinished(bool.booleanValue());
            }
        }
    }

    public static boolean createAssetFile(Context context, String str) {
        if (str != null && !str.equals("")) {
            if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
                return false;
            }
            File file = new File(SdkDeviceUtils.getInnerStoragePathIfPosible(context), createAssetFileName(str));
            if (!file.exists()) {
                return BaseConnectionClient.downloadAndSaveFile(str, file);
            }
        }
        return true;
    }

    public static boolean createAssetFile2(Context context, String str) {
        if (str != null && !str.equals("")) {
            File file = new File(SdkDeviceUtils.getInnerStoragePathIfPosible(context), createAssetFileName2(str));
            if (!file.exists()) {
                return BaseConnectionClient.downloadAndSaveFile(str, file);
            }
        }
        return true;
    }

    private static String createAssetFileName(String str) {
        if (str != null) {
            return str.substring(str.lastIndexOf("/") + 1, str.length());
        }
        return null;
    }

    private static String createAssetFileName2(String str) {
        if (str == null) {
            return null;
        }
        return str.replace("/", "") + str.substring(str.lastIndexOf("/") + 1, str.length());
    }

    public static void deleteAssetFile(Context context, String str) {
        if (str != null) {
            File file = new File(SdkDeviceUtils.getInnerStoragePathIfPosible(context), createAssetFileName(str));
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void deleteAssetFile2(Context context, String str) {
        if (str != null) {
            File file = new File(SdkDeviceUtils.getInnerStoragePathIfPosible(context), createAssetFileName2(str));
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static ArrayList<String> generateAssetFileImageList(JSONObject jSONObject, String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        String strOptString = jSONObject.optString(str);
        if (jSONObject.has(str + "Arr")) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str + "Arr");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0 && strOptString != null) {
                String strSubstring = strOptString.substring(0, strOptString.lastIndexOf(".") + 1);
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    String strOptString2 = jSONArrayOptJSONArray.optString(i, "");
                    if (!strOptString2.equals("webp") && !strOptString2.equals("webP") && !strOptString2.equals("WEBP")) {
                        arrayList.add(strSubstring + strOptString2);
                    } else if (Utils.isWebViewSupportWebP()) {
                        arrayList.add(strSubstring + strOptString2);
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(strOptString);
        }
        return arrayList;
    }

    public static File getAssetFile(Context context, String str) {
        File file = null;
        if (str == null) {
            return null;
        }
        try {
            if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
                return null;
            }
            String strCreateAssetFileName = createAssetFileName(str);
            File innerStoragePathIfPosible = SdkDeviceUtils.getInnerStoragePathIfPosible(context);
            if (str.equals("")) {
                return null;
            }
            File file2 = new File(innerStoragePathIfPosible, strCreateAssetFileName);
            try {
                if (file2.exists()) {
                    return file2;
                }
                return null;
            } catch (Exception e2) {
                e = e2;
                file = file2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        SDKLogger.printErrorLog(e.getLocalizedMessage());
        return file;
    }

    public static File getAssetFile2(Context context, String str) {
        if (str == null) {
            return null;
        }
        try {
            String strCreateAssetFileName2 = createAssetFileName2(str);
            File innerStoragePathIfPosible = SdkDeviceUtils.getInnerStoragePathIfPosible(context);
            if (str.equals("")) {
                return null;
            }
            File file = new File(innerStoragePathIfPosible, strCreateAssetFileName2);
            try {
                if (!file.exists()) {
                    return null;
                }
            } catch (Exception unused) {
            }
            return file;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static boolean loadAsset(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) throws JSONException {
        boolean zCreateAssetFile;
        ArrayList<String> arrayListGenerateAssetFileImageList = generateAssetFileImageList(jSONObject2, str);
        int i = 0;
        if (arrayListGenerateAssetFileImageList.isEmpty()) {
            return false;
        }
        boolean z = false;
        while (i < arrayListGenerateAssetFileImageList.size()) {
            if (jSONObject != null) {
                String strOptString = jSONObject.optString(str);
                File assetFile = getAssetFile(context, strOptString);
                if (strOptString == null || !strOptString.equals(arrayListGenerateAssetFileImageList.get(i)) || assetFile == null || !assetFile.exists() || assetFile.length() == 0) {
                    if (strOptString != null && !strOptString.equals("") && assetFile != null && assetFile.exists()) {
                        deleteAssetFile(context, strOptString);
                    }
                    zCreateAssetFile = createAssetFile(context, arrayListGenerateAssetFileImageList.get(i));
                } else {
                    zCreateAssetFile = true;
                }
            } else {
                zCreateAssetFile = createAssetFile(context, arrayListGenerateAssetFileImageList.get(i));
            }
            if (zCreateAssetFile) {
                jSONObject2.put(str, arrayListGenerateAssetFileImageList.get(i));
                return zCreateAssetFile;
            }
            i++;
            z = zCreateAssetFile;
        }
        return z;
    }

    public static boolean parseAssets(Context context, String str) {
        boolean bannerData;
        if (context == null || str == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(GLOBAL_STYLE_PARAMS)) {
                bannerData = StyleParser.parseGlobalStyleData(context, jSONObject.getJSONObject(GLOBAL_STYLE_PARAMS));
            } else if (jSONObject.has("interstitial")) {
                bannerData = StyleParser.parseInterstitialData(context, jSONObject.getJSONObject("interstitial"));
            } else {
                if (!jSONObject.has(BANNER_ASSETS)) {
                    return false;
                }
                bannerData = StyleParser.parseBannerData(context, jSONObject.getJSONObject(BANNER_ASSETS));
            }
            return bannerData;
        } catch (Exception e2) {
            SDKLogger.printErrorLog(TAG, "Error when trying to parse assets: " + e2.getMessage());
            return false;
        }
    }

    public static void parseStyleAsync(Context context, ParserAsyncTask.IOnStyleParseListener iOnStyleParseListener) {
        ParserAsyncTask parserAsyncTask = new ParserAsyncTask(context, iOnStyleParseListener);
        if (Build.VERSION.SDK_INT < 11) {
            parserAsyncTask.execute(new Void[0]);
        } else {
            parserAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }
}
