import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import com.mysql.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    private Connection connection;
    private Config config = new Config();

    public MySQLAdsDao() throws SQLException
    { new Driver();
        this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    }


    @Override
    public List<Ad> all() {
//        Statement statement = null;
//        ResultSet resultSet = null;
        List<Ad> adList = new ArrayList<>();

        try {
            String selectQuery = "SELECT * FROM ads";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectQuery);
            while (resultSet.next()) {
                Ad newAd = new Ad(resultSet.getLong("id"), resultSet.getLong("user_id"), resultSet.getString("title"), resultSet.getString("description"));
                adList.add(newAd);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adList;
    }

    @Override
    public long insert(Ad ad) {
        long id = 0;
        long userId = ad.getUserId();
        String userTitle = ad.getTitle();
        String userDescription = ad.getDescription();
        try {
            Statement statement = connection.createStatement();
            String newSQL = "INSERT INTO ads (user_id, title, description) " +
                    "VALUES("+ad.getUserId()+", '"+ad.getTitle()+"', '"+ad.getDescription()+"')";
            statement.executeUpdate(newSQL, Statement.RETURN_GENERATED_KEYS);
            ResultSet resultSet = statement.getGeneratedKeys();
            if (resultSet.next()){
                id = resultSet.getLong(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }
}

