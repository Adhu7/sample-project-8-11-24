<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Management</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            background-color: #0056b3;
            color: white;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
        }
        .sidebar a {
            color: white;
            padding: 15px;
            text-decoration: none;
            display: block;
            font-size: 16px;
        }
        .sidebar a:hover {
            background-color: #004085;
        }
        .main-content {
            margin-left: 260px;
            padding: 20px;
        }
        footer {
            background-color: #0056b3;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2 class="text-center py-4">Artevo Admin</h2>
    <a href="adminDashboard.jsp">Dashboard</a>
  
    <a href="artistManage.jsp">Artist Management</a>
    <a href="artworkManage.jsp">Artwork Management</a>
    <a href="orderManage.jsp">Order Management</a>
    <a href="admin-login.jsp" class="btn btn-logout">Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Top Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Admin Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <h5>Artist Management</h5>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Artist Management Section -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-12">
                <h2>Manage Artists</h2>
                <p>Review artist profiles, approve new artists, and edit existing profiles.</p>

        <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addArtistModal" onclick="window.location.href='createArtist.jsp'">Create Artist</button>

                <!-- Artist Table -->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Artist Name</th>
                            <th>Genre</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="artist-list">
                        <!-- Sample Data, Replace with Real Data from DB -->
                        <tr>
                            <td>1</td>
                            <td>Ravi Varma</td>
                            <td>Canvas</td>
                           <td>ravivarma76@gmail.com</td>
                           <td>9860404189</td>
                            <td>
                                
                                <button class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#editArtistModal" onclick="window.location.href='editArtist.jsp'">Edit</button>
                                <button class="btn btn-danger btn-sm" onclick="deleteArtist(1)">Delete</button>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>


</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 Artevo. All Rights Reserved.</p>
    <p><a href="terms.jsp">Terms & Conditions</a> | <a href="privacy.jsp">Privacy Policy</a></p>
</footer>

<!-- Bootstrap JS & Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
